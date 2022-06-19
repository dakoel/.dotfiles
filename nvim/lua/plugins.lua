require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "williamboman/nvim-lsp-installer"
  use "neovim/nvim-lspconfig"
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/nvim-cmp"
  use {
    "nvim-telescope/telescope.nvim",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
end)

require("plugins/lsp")
require("plugins/cmp")
