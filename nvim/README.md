# Neovim configuration

## Requirements

- Neovim >= 0.7.0
- [packer](https://github.com/wbthomason/packer.nvim)
- Some plugins may require the setting of a special font in the terminal to display icons. I recommend the use of [Hack Nerd Font](https://www.nerdfonts.com/).

## Plugins used

- [bufferline](https://github.com/akinsho/bufferline.nvim)
- [cmp-buffer](https://github.com/sar/cmp-buffer.nvim)
- [cmp-nvim-lsp](https://github.com/sar/cmp-lsp.nvim)
- [diffview](https://github.com/sindrets/diffview.nvim)
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer/)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [packer](https://github.com/wbthomason/packer.nvim)
- [plenary](https://github.com/nvim-lua/plenary.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [vim-vsnip](https://github.com/hrsh7th/vim-vsnip)
- [vim-vsnip-integ](https://github.com/hrsh7th/vim-vsnip-integ)

## Custom commands

- `:GitHistory`<br/>
  Show the Git history for the current file with the help of the diffview plugin

- `:GitDiff`<br/>
  Open diffview (allows to cycle through the Git diffs)

## Custom keymaps

### Normal mode

_Note_: The &lt;Space&gt; key is configured as leader key but still is referred to as &lt;Leader&gt; in the following.

#### General

- `<CR>`: Enables to enter a command (same as pressing `:`)
- `<Leader>xb`: Close the current buffer
- `<Leader>xt`: Close the current tab

#### Terminal

- `<Leader>tt`: Open terminal
- `<Leader>ts`: Open terminal in horizontal split
- `<Leader>tv`: Open terminal in vertical split

#### nvim-tree

- `_`: Toggle nvim-tree

#### telescope

- `<Leader>ff`: Find files in current work directory
- `<Leader>fg`: Search for a string in current work directory
- `<Leader>fb`: List open buffers
- `<Leader>fc`: List available plugin/user commands

#### bufferline

- `H`: Switch to previous buffer
- `L`: Switch to next buffer
- `<C-h>`: Move current buffer one position to the left
- `<C-l>`: Move current buffer one position to the right

#### nvim-lspconfig

- `gd`: Go to definition
- `gD`: Go to declaration
- `gr`: Show references
- `gi`: Go to implementation
- `K`: Hover (show information for the class/variable under the curser in a little popup window)
- `<Leader>ds`: Show document symbols
- `<Leader>ca`: Show possible code actions
- `<Leader>rn`: Rename class/variable
- `<Leader>=`: Reformat code

#### nvim-dap

- `tb`: Toggle (set/unset) breakpoint for current line
- `<Leader>dd`: Start/continue debugging
- `<Leader>dc`: Terminate debugging process
- `<Leader>d?`: Show current state

### Insert mode

- `jk`: Leave insert mode and switch to normal mode (same as pressing `<ESC>`)
