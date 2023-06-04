local util = require "lspconfig.util"
local rootFiles = {
	".clangd",
	".clang-tidy",
	".clang-format",
	"compile_commands.json",
	"compile_flags.txt",
	"build.sh",
	"configure.ac",
	"run",
	"compile"
}

return {
	settings = {
		-- from: github/Fildo7525/nvim 
		cmd = {
			"clangd",
			"--all-scopes-completion",
			"--background-index",
		},
		filetypes = { "c", "cpp", "objc", "objcpp" },
		root_dir = function (fname)
			return util.root_pattern(unpack(rootFiles))(fname) or util.find_git_ancestor(fname)
		end,
		init_options = {
			compilationDatabasePath = "build"
		}
	},
	commands = {
		ClangdSwitchSourceHeader = {
			function()
				switch_source_header(0)
			end,
			description = "Switch between source/header"
		}
	},
	on_attach = function(client, bufnr)
		local serverCapabilities = client.server_capabilities
		if serverCapabilities.semanticTokensProvider and serverCapabilities.semanticTokensProvider.full then
			local augroup = vim.api.nvim_create_autogroup("SemanticTokens", {})
			vim.api.nvim_create_autocmd("TextChanged", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.semantic_tokens_full()
				end
			})
			vim.lsp.buf.semantic_tokens_full()
		end
	
	end,
}
