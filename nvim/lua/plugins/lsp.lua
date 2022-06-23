require("nvim-lsp-installer").setup {}

local lspconfig = require("lspconfig")
lspconfig.sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
}
lspconfig.dartls.setup({})
