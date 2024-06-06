return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitFilterCurrentFile",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<Leader>gg", "<Cmd>LazyGit<CR>", desc = "Lazygit" },
    { "<Leader>gl", "<Cmd>LazyGitFilterCurrentFile<CR>", desc = "Log (Buffer)" },
  }
}
