
return {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT"
			},
			diagnostics = {
				-- Prevents diagnostic errors because of undefined vim global
				globals = { "vim" }
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				[vim.fn.expand("$VIMRUNTIME/lua")] = true,
				[vim.fn.stdpath("config") .. "/lua"] = true
			},
			telemetry = {
				enable = false
			}
		}
	},
	on_attach = function(client, bufnr)
		client.server_capabilities.documentFormattingProvider = false
	end
}
