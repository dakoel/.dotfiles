return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  opts = function()
    local actions = require("telescope.actions")
    return {
      defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        get_selection_window = function()
          local wins = vim.api.nvim_list_wins()
          table.insert(wins, 1, vim.api.nvim_get_current_win())
          for _, win in ipairs(wins) do
            local buf = vim.api.nvim_win_get_buf(win)
            if vim.bo[buf].buftype == "" then
              return win
            end
          end
          return 0
        end,
        mappings = {
          n = {
            ["q"] = actions.close,
          },
        },
      },
    }
  end,
  keys = {
    { "<Leader><Leader>", "<Cmd>Telescope find_files<CR>", desc = "Find files" },
    { "<Leader>/", "<Cmd>Telescope live_grep<CR>", desc = "Grep" },
    { "<Leader>sc", "<Cmd>Telescope command_history<CR>", desc = "Command History" },
    { "<Leader>sC", "<Cmd>Telescope commands<CR>", desc = "Commands" },
    { "<Leader>sd", "<Cmd>Telescope diagnostics bufnr=0<CR>", desc = "Diagnostics (Buffer)" },
    { "<Leader>sD", "<Cmd>Telescope diagnostics<CR>", desc = "Diagnostics" },
    { "<Leader>sh", "<Cmd>Telescope help_tags<CR>", desc = "Help Pages" },
    { "<Leader>sk", "<Cmd>Telescope keymaps<CR>", desc = "Key Maps" },
  },
}
