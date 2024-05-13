-- Set file type for Ansible files, necessary for ansible-language-server and ansible-lint to detect files
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

-- Set file type to target type for Jinja2 templates
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = "*.*.j2",
  callback = function()
    local file_name = vim.fn.expand("%:t")

    local parts = {}
    for part in string.gmatch(file_name, "[^%.]+") do
      table.insert(parts, part)
    end

    vim.bo.filetype = parts[#parts - 1]
  end,
})
