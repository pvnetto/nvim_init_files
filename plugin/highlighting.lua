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
