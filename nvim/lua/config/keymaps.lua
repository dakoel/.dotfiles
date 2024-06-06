-- General configuration
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<Leader>l", "<Cmd>Lazy<CR>", { desc = "Lazy" })
vim.keymap.set("n", "<Leader>bd", "<Cmd>bd<CR>", { desc = "Delete buffer" })

-- Prefix descriptions
vim.keymap.set("n", "<Leader>b", "", { desc = "+buffer" })
vim.keymap.set("n", "<Leader>d", "", { desc = "+debug" })
vim.keymap.set("n", "<Leader>g", "", { desc = "+git" })
vim.keymap.set("n", "<Leader>n", "", { desc = "+noice" })
vim.keymap.set("n", "<Leader>s", "", { desc = "+search" })
vim.keymap.set("n", "<Leader>t", "", { desc = "+trouble" })
