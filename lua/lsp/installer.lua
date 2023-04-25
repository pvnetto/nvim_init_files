

local activeServers = {
	"clangd",
	"lua_ls",
--	"cmake"
}

require("mason").setup({
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		}
	},
	max_concurrent_installers = 4
})

require("mason-lspconfig").setup({
	ensure_installed = activeServers,
	automatic_installation = true
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmpCapabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
capabilities = vim.tbl_deep_extend("force", cmpCapabilities, capabilities)

local lspconfig = require("lspconfig")
local setupKeybinds = require("lsp.keybinds").setup
for _, serverName in pairs(activeServers) do
	serverName = vim.split(serverName, "@")[1]
	local lspServerOK, serverConfig = pcall(require, "lsp.servers." .. serverName)
	if lspServerOK then
		-- Expands settings table with lsp-specific settings
		local settings = {
			capabilities = capabilities,
			on_attach = function(client, bufnr)
				setupKeybinds(bufnr)
				serverConfig.on_attach(client, bufnr)
			end
		}


		settings = vim.tbl_deep_extend("force", serverConfig.settings, settings)
		--print(vim.inspect(settings))
		lspconfig[serverName].setup(settings)
	else
		print("Couldn't find " .. serverName .. " server definition")
	end

end

