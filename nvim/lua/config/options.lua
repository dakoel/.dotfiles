-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local function load_project_specific_settings()
  local nvim_lua = vim.fn.getcwd() .. "/.nvim.lua"
  local file_handle = io.open(nvim_lua, "r")

  if file_handle then
    local contents = file_handle:read("*a")
    file_handle:close()

    local success, err = pcall(function()
      return loadstring(contents)()
    end)

    if not success then
      print("Error executing .nvim.lua:", err)
    end
  end
end

vim.opt.spell = false
load_project_specific_settings()
