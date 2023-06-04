options = { noremap=true }
vim.api.nvim_set_keymap('n', '<Up>', 		'<NOP>', options)
vim.api.nvim_set_keymap('n', '<Down>', 		'<NOP>', options)
vim.api.nvim_set_keymap('n', '<Left>', 		'<NOP>', options)
vim.api.nvim_set_keymap('n', '<Right>', 	'<NOP>', options)
vim.api.nvim_set_keymap('n', '<esc><esc>',	':nohlsearch<return><esc>', options)
vim.api.nvim_set_keymap('n', '<leader>j', 	':bp<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>k', 	':bn<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>s', 	':w<CR>', options)
