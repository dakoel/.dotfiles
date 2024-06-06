return {
  "folke/trouble.nvim",
  cmd = { "TroubleToggle", "Trouble" },
  opts = { 
    use_diagnostic_signs = true,
    win = {
      size = 20
    }
  },
  keys = {
    { "<Leader>tt", "<Cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Diagnostics (Buffer)" },
    { "<Leader>tT", "<Cmd>Trouble diagnostics toggle<CR>", desc = "Diagnostics" },
    { "<Leader>ts", "<Cmd>Trouble symbols toggle focus=false win.position=bottom<CR>", desc = "Symbols" },
    { "<Leader>tl", "<Cmd>Trouble lsp toggle focus=false<CR>", desc = "LSP" },
  },
}
