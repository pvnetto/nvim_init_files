local SetupModule = {}

SetupModule.setup = function()
	local config = {
		virtual_text = false,
		signs = {
			active = signs,
		},
		update_in_insert = true,
		underline = true,
		severity_sort = true,
		float = {
			focusable = true,
			style = "minimal",
			border = "rounded",
			source = "always",
			header = "",
			preffix = "",
		}
	}

	vim.diagnostic.config(config)
end


return SetupModule
