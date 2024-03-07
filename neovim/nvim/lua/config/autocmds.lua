-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd("highlight DashboardHeader guifg=#ffffff")

-- Set filetype for Ansible files, necessary for ansible-language-server and ansible-lint to detect files
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = {
    "*/playbooks/*.yml",
    "*/playbooks/*.yaml",
    "*/roles/*/tasks/*.yml",
    "*/roles/*/tasks/*.yaml",
    "*/roles/*/handlers/*.yml",
    "*/roles/*/handlers/*.yaml",
  },
  callback = function()
    vim.bo.filetype = "yaml.ansible"
  end,
})
-- Also detect Ansible playbooks in root directory
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = {
    "*.yml",
    "*.yaml",
  },
  callback = function()
    local roles_dir = vim.fn.globpath(".", "roles")
    if roles_dir ~= "" then
      vim.bo.filetype = "yaml.ansible"
    end
  end,
})
