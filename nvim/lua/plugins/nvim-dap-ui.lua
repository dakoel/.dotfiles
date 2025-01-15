return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "nvim-neotest/nvim-nio" },
  keys = {
    {
      "<Leader>du",
      function()
        require("dapui").toggle({})
      end,
      desc = "Dap UI",
    },
    {
      "<Leader>de",
      function()
        require("dapui").eval()
      end,
      desc = "Eval",
      mode = { "n", "v" },
    },
  },
  opts = {
    layouts = {
      {
        elements = {
          { id = "repl" },
        },
        size = 30,
        position = "bottom",
      },
      {
        elements = {
          { id = "breakpoints", size = 0.4 },
          { id = "scopes", size = 0.5 },
        },
        size = 70,
        position = "right",
      },
    },
  },
  config = function(_, opts)
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup(opts)
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open({})
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close({})
    end
  end,
}
