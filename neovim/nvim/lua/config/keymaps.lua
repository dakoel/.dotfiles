-- General configuration
vim.keymap.set("n", "<CR>", ":")
vim.keymap.set("i", "jk", "<ESC>")

-- Colorscheme
vim.keymap.set("n", "_", function()
  vim.cmd(vim.g.colors_name == "onedark" and "colorscheme onelight" or "colorscheme onedark")
end, { desc = "Toggle colorscheme" })

-- Terminal
vim.keymap.set("n", "<Leader>tt", "<Cmd>terminal<CR>")
vim.keymap.set("n", "<Leader>ts", "<Cmd>split | terminal<CR>")
vim.keymap.set("n", "<Leader>tv", "<Cmd>vsplit | terminal<CR>")
vim.cmd("autocmd TermOpen * tnoremap <ESC> <C-\\><C-n>")
vim.cmd("autocmd TermOpen * tnoremap <Leader>jk <C-\\><C-n>")
