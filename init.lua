require "globals"
require "options"
require "keybinds"

-- Loads plugins using packer
require "packer-startup"

require "completion"
require "lsp"

vim.cmd('let g:airline#extensions#tabline#enabled = 1')
