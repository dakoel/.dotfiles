return {
  "nvimdev/dashboard-nvim",
  opts = function()
    local logo = [[
    _   __                _         
   / | / /__  ____ _   __(_)___ ___ 
  /  |/ / _ \/ __ \ | / / / __ `__ \
 / /|  /  __/ /_/ / |/ / / / / / / /
/_/ |_/\___/\____/|___/_/_/ /_/ /_/ 
                                    
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
      theme = "hyper",
      shortcut_type = "number",
      config = {
        header = vim.split(logo, "\n"),
        packages = { enable = false },
        project = { enable = false },
        shortcut = {
          { desc = "Neotree", group = "@property", action = "Neotree toggle position=float", key = "e" },
          { desc = "Vimwiki", group = "@property", action = "VimwikiIndex", key = "w" },
          { desc = "Update", group = "@property", action = "Lazy update", key = "u" },
          { desc = "Quit", group = "@property", action = "quit", key = "q" },
        },
        footer = {},
      },
    }
    return opts
  end,
}
