require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "williamboman/nvim-lsp-installer"
  use "neovim/nvim-lspconfig"
  use "hrsh7th/vim-vsnip"
  use "hrsh7th/vim-vsnip-integ"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/nvim-cmp"
  use "nvim-lua/plenary.nvim" -- Needed by telescope and diffview
  use "kyazdani42/nvim-web-devicons" -- Needed by nvim-tree, lualine and bufferline
  use "nvim-telescope/telescope.nvim"
  use "kyazdani42/nvim-tree.lua"
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use "nvim-lualine/lualine.nvim"
  use "windwp/nvim-autopairs"
  use "sindrets/diffview.nvim"
  use "davidgranstrom/nvim-markdown-preview"
  use "lukas-reineke/indent-blankline.nvim"
  use "mfussenegger/nvim-dap"
  use "akinsho/bufferline.nvim"
end)
