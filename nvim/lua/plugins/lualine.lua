return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local lualine_require = require("lualine_require")
      lualine_require.require = require
      vim.o.laststatus = vim.g.lualine_laststatus

      return {
        options = {
          globalstatus = true,
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
        },
        sections = {
          lualine_a = { "branch" },
          lualine_b = {
            {
              "filename",
              path = 1,
            },
            {
              "diagnostics",
            },
          },
          lualine_c = {},
          lualine_x = {},
          lualine_y = {
            { "diff" },
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
