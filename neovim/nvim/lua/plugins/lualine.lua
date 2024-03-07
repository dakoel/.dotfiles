return {
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    opts = function()
      local icons = require("lazyvim.config").icons
      local lualine_require = require("lualine_require")
      lualine_require.require = require

      vim.o.laststatus = vim.g.lualine_laststatus

      return {
        options = {
          theme = "ayu_mirage",
          globalstatus = true,
          disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
        },
        sections = {
          lualine_a = { "branch" },
          lualine_b = {
            {
              "filename",
              path = 1,
              symbols = {
                modified = icons.git.modified,
              },
            },
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
          },
          lualine_c = {},
          lualine_x = {},
          lualine_y = {
            {
              "diff",
              symbols = {
                added = icons.git.added,
                modified = icons.git.modified,
                removed = icons.git.removed,
              },
            },
            { "location" },
          },
          lualine_z = {
            { "progress", separator = " ", padding = 1 },
          },
        },
        extensions = { "neo-tree", "lazy" },
      }
    end,
  },
}
