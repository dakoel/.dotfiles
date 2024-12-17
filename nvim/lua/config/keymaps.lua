-- General configuration
vim.keymap.set("i", "jk", "<ESC>")

-- Marks
for i = string.byte("a"), string.byte("z") do
  local char = string.char(i)
  vim.keymap.set("n", "dm" .. char, "<Cmd>delmark " .. char .. "<CR>", { desc = "Delete mark " .. char })
  vim.keymap.set(
    "n",
    "dm" .. string.upper(char),
    "<Cmd>delmark " .. string.upper(char) .. "<CR>",
    { desc = "Delete mark " .. string.upper(char) }
  )
end
vim.keymap.set("n", "dm<Leader>", "<Cmd>delmark a-z A-Z<CR>", { desc = "Delete all marks" })
