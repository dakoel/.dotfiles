-- Leader
vim.g.mapleader = " "

-- Basic configuration
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<ESC><ESC>", ":silent! nohls<CR>")

-- Terminal
vim.keymap.set("n", "<Leader>tt", "<Cmd>terminal<CR>")
vim.keymap.set("n", "<Leader>th", "<Cmd>split | terminal<CR>")
vim.keymap.set("n", "<Leader>tv", "<Cmd>vsplit | terminal<CR>")
vim.cmd('autocmd TermOpen * tnoremap <ESC> <C-\\><C-n>')
vim.cmd('autocmd TermOpen * tnoremap jk <C-\\><C-n>')

-- Telescope
vim.keymap.set("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fg", "<Cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fb", "<Cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<Leader>fc", "<Cmd>Telescope commands<CR>")

-- nvim-tree
vim.keymap.set("n", "_", "<Cmd>NvimTreeToggle<CR>")
