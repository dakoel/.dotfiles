require("nvim-lsp-installer").setup {}

local on_attach = function(_)
  vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  vim.keymap.set("n", "<leader>ds", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
  vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
  vim.keymap.set("n", "<leader>=", "<cmd>lua vim.lsp.buf.formatting()<CR>")
end

require("lspconfig").sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
}
require("lspconfig").dartls.setup({
  on_attach = on_attach
})
