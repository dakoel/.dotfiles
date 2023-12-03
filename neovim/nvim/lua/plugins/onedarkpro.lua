return {
  {
    "olimorris/onedarkpro.nvim",
    keys = {
      {
        "_",
        function()
          vim.cmd(vim.g.colors_name == "onedark" and "colorscheme onelight" or "colorscheme onedark")
        end,
        mode = "n",
        desc = "Toggle colorscheme",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
