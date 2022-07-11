-- General configuration
vim.g.mapleader = " "
vim.keymap.set("n", "<CR>", ":")
vim.keymap.set("n", "<ESC><ESC>", ":silent! nohls<CR>")
vim.keymap.set("n", "<Leader>xb", ":bdelete<CR>")
vim.keymap.set("n", "<Leader>xt", ":tabclose<CR>")

-- Terminal
vim.keymap.set("n", "<Leader>tt", "<Cmd>terminal<CR>")
vim.keymap.set("n", "<Leader>ts", "<Cmd>split | terminal<CR>")
vim.keymap.set("n", "<Leader>tv", "<Cmd>vsplit | terminal<CR>")
vim.cmd("autocmd TermOpen * tnoremap <ESC> <C-\\><C-n>")
vim.cmd("autocmd TermOpen * tnoremap <Leader>jk <C-\\><C-n>")

-- nvim-tree
vim.keymap.set("n", "_", "<Cmd>NvimTreeToggle<CR>")

-- telescope
vim.keymap.set("n", "<Leader>ff", "<Cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fg", "<Cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fb", "<Cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<Leader>fc", "<Cmd>Telescope commands<CR>")

-- bufferline
vim.keymap.set("n", "H", "<Cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n", "L", "<Cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<C-h>", "<Cmd>BufferLineMovePrev<CR>")
vim.keymap.set("n", "<C-l>", "<Cmd>BufferLineMoveNext<CR>")

-- nvim-lspconfig
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "<Leader>ds", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
vim.keymap.set("n", "<Leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
vim.keymap.set("n", "<Leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "<Leader>=", "<cmd>lua vim.lsp.buf.formatting()<CR>")

-- nvim-dap
vim.keymap.set("n", "tb", function() require("dap").toggle_breakpoint() end)
vim.keymap.set("n", "<Leader>dd", function() require("dap").continue() end)
vim.keymap.set("n", "<Leader>dc", function() require("dap").terminate() end)
vim.keymap.set("n", "<Leader>d?",
  function() local widgets = require "dap.ui.widgets"; widgets.centered_float(widgets.scopes) end)
