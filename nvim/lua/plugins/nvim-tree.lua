require("nvim-tree").setup({
  view = {
    mappings = {
      list = {
        { key = "s", action = "split" },
        { key = "v", action = "vsplit" },
        { key = ".", action = "cd" }
      }
    }
  }
})
