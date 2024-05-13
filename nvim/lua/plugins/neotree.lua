return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function()
    local icons = require("lazyvim.config").icons
    return {
      default_component_configs = {
        git_status = {
          symbols = {
            added = icons.git.added,
            modified = icons.git.modified,
            deleted = icons.git.removed,
            renamed = "󰁕",
            -- Status type
            untracked = "",
            ignored = "",
            unstaged = "󰄱",
            staged = "",
            conflict = "",
          },
        },
      },
      window = {
        position = "float",
      },
    }
  end,
}
