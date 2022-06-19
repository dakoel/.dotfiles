vim.g.mapleader = " "
vim.keymap.set("n", "<Esc>", ":silent! nohls<CR>")

-- Telescope
vim.keymap.set("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fg", "<Cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fb", "<Cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<Leader>fc", "<Cmd>Telescope commands<CR>")
