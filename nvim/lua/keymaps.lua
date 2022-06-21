-- Leader
vim.g.mapleader = " "

-- Basic configuration
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<ESC><ESC>", ":silent! nohls<CR>")
vim.keymap.set("n", "<C-x>", ":bd<CR>")

-- Terminal
vim.keymap.set("n", "<Leader>tt", "<Cmd>terminal<CR>")
vim.keymap.set("n", "<Leader>ts", "<Cmd>split | terminal<CR>")
vim.keymap.set("n", "<Leader>tv", "<Cmd>vsplit | terminal<CR>")
vim.cmd("autocmd TermOpen * tnoremap <ESC> <C-\\><C-n>")
vim.cmd("autocmd TermOpen * tnoremap jk <C-\\><C-n>")

-- Telescope
vim.keymap.set("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fg", "<Cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fb", "<Cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<Leader>fc", "<Cmd>Telescope commands<CR>")

-- nvim-tree
vim.keymap.set("n", "_", "<Cmd>NvimTreeToggle<CR>")

-- LSP
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "<leader>ds", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "<leader>=", "<cmd>lua vim.lsp.buf.formatting()<CR>")

-- nvim-dap
vim.keymap.set("n", "tb", function() require("dap").toggle_breakpoint() end)
vim.keymap.set("n", "<leader>dd", function() require("dap").continue() end)
vim.keymap.set("n", "<leader>dc", function() require("dap").terminate() end)
vim.keymap.set("n", "<leader>d?",
  function() local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes) end)

-- bufferline.nvim
vim.keymap.set("n", "H", "<Cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n", "L", "<Cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<C-h>", "<Cmd>BufferLineMovePrev<CR>")
vim.keymap.set("n", "<C-l>", "<Cmd>BufferLineMoveNext<CR>")
