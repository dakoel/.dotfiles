require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "williamboman/nvim-lsp-installer"
  use "neovim/nvim-lspconfig"
  use "hrsh7th/vim-vsnip"
  use "hrsh7th/vim-vsnip-integ"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/nvim-cmp"
  use {
    "nvim-telescope/telescope.nvim",
    requires = {"nvim-lua/plenary.nvim"}
  }
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {"kyazdani42/nvim-web-devicons"}
  }
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use {
    "nvim-lualine/lualine.nvim",
    requires = {
      "kyazdani42/nvim-web-devicons",
      opt = true
    }
  }
  use "windwp/nvim-autopairs"
  use { "sindrets/diffview.nvim", requires = "nvim-lua/plenary.nvim" }
  use "davidgranstrom/nvim-markdown-preview"
  use "lukas-reineke/indent-blankline.nvim"
  use "mfussenegger/nvim-dap"
  use {
    "akinsho/bufferline.nvim",
    requires = "kyazdani42/nvim-web-devicons"
  }
end)

require("plugins/lsp")
require("plugins/cmp")
require("plugins/nvim-tree")
require("plugins/treesitter")
require("plugins/lualine")
require("nvim-autopairs").setup()
require("diffview").setup()
require("indent_blankline").setup()
require("plugins/bufferline")
