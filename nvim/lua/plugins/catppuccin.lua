return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  opts = {
    transparent_background = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      lsp_trouble = true,
      mason = true,
      markdown = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      neotree = true,
      noice = true,
      notify = true,
      telescope = true,
      treesitter = true,
      treesitter_context = true,
      which_key = true,
    },
  },
}
