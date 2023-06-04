-- from: terminalroot.com.br 
require'nvim-treesitter.configs'.setup {
	ensure_installed = { 'c', 'lua', 'cpp', 'bash' },
	sync_install = false,
	
	highlight = {
		enable = true,
		disable = { 'c', 'bash' },
		additional_vim_regex_highlighting = false,
	},
}

function inspect_highlight_group()
	local result = vim.treesitter.get_captures_at_cursor(0)
	print(vim.inspect(result))
end
