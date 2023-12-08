return {
  "nvim-neorg/neorg",
  lazy = false,
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              neorg = "~/.neorg/neorg",
            },
            default_workspace = "neorg",
          },
        },
      },
    })
  end,
  keys = {
    { "<Leader>ni", "<Cmd>Neorg index<CR>", mode = "n", desc = "index" },
    { "<Leader>nt", "<Cmd>Neorg toggle-concealer<CR>", mode = "n", desc = "toggle-concealer" },
    { "<Leader>nr", "<Cmd>Neorg return<CR>", mode = "n", desc = "return" },
    { "<Leader>nd", "<Cmd>Neorg keybind norg core.qol.todo_items.todo.task_done<CR>", mode = "n", desc = "task done" },
    {
      "<Leader>nu",
      "<Cmd>Neorg keybind norg core.qol.todo_items.todo.task_undone<CR>",
      mode = "n",
      desc = "task undone",
    },
  },
}
