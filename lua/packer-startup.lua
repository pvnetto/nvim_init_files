return require('packer').startup(function()
	-- packer requires itself
	use 'wbthomason/packer.nvim'

	-- themes
	use 'folke/tokyonight.nvim'
	use 'rose-pine/neovim'

	-- file explorer 
	use 'nvim-tree/nvim-tree.lua'

	-- lsp & static analysis
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
  	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer"
  	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-nvim-lua"
	use {
		'nvim-treesitter/nvim-treesitter',
		-- this will fail on first launch, so you should either comment it or handle this case appropriately
		run=':TSUpdate'
	}

	-- utils
    	use 'vim-airline/vim-airline'
end)

