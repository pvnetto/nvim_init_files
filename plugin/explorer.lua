vim.cmd("autocmd StdinReadPre * let s:std_in=1")
vim.cmd("autocmd VimEnter * NERDTree | if argc() > 0 || exists('s:std_in') | wincmd p | endif")
