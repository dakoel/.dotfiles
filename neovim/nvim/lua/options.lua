-- Display
vim.o.ignorecase = true
vim.o.wrap = false
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.relativenumber = true

-- Behaviour
vim.o.splitright = true
vim.o.splitbelow = true

-- Search
vim.o.ignorecase = true

-- Tabs and indentation
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- Folding
vim.o.foldmethod = "indent"
vim.o.nofoldenable = true
vim.o.foldlevel = 99

-- Terminal
vim.cmd("autocmd TermOpen * setlocal nonumber norelativenumber")
