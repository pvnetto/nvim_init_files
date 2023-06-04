return require('packer').startup(function()
	-- packer requires itself
	use 'wbthomason/packer.nvim'

	-- themes
	use 'folke/tokyonight.nvim'
	use 'rose-pine/neovim'
	use 'savq/melange-nvim'
	use 'sainnhe/gruvbox-material'
	use 'Shatur/neovim-ayu'
	use 'Mofiqul/dracula.nvim'
	use 'rebelot/kanagawa.nvim'
	use 'marko-cerovac/material.nvim'
	use 'ellisonleao/gruvbox.nvim'

	-- file explorer 
	use 'nvim-tree/nvim-tree.lua'

	-- lsp
	use { 'neovim/nvim-lspconfig' }
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
  	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
  	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use {
		'junegunn/fzf',
		run=':call fzf#install()'
	}
	use 'junegunn/fzf.vim'


	-- static analysis
	use {
		'nvim-treesitter/nvim-treesitter',
		-- this will fail on first launch, so you should either comment it or handle this case appropriately
		run=':TSUpdate'
	}
	use 'nvim-treesitter/playground'

	-- utils
    	use 'vim-airline/vim-airline'
	use 'christoomey/vim-tmux-navigator'
	use 'sbdchd/neoformat'

end)

