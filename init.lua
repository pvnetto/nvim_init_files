require "globals"
require "options"
require "keybinds"

-- Loads plugins using packer
require "packer-startup"

require "completion"
require "lsp"
require "fuzzy-search"

vim.cmd('let g:airline#extensions#tabline#enabled = 1')

-- From: https://jdhao.github.io/2020/04/19/nvim_cpp_and_c_completion/#code-formatting
vim.cmd("let g:neoformat_enabled_cpp = ['clangformat']")
vim.cmd("let g:neoformat_enabled_c = ['clangformat']")

vim.cmd('set tabstop=4')
