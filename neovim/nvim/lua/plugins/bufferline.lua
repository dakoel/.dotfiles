require("bufferline").setup({
  options = {
    indicator = {
      style = 'icon',
      icon = ' >'
    },
    show_buffer_close_icons = false,
    show_close_icon = false,
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "NvimTree",
        text = "nvim-tree",
        highlight = "Directory",
        text_align = "left"
      }
    }
  }
})
