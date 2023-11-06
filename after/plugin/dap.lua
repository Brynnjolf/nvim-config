local dap = require("dap")
local dapui = require("dapui")

require("mason").setup();
require("mason-nvim-dap").setup({
    ensure_installed = { "codelldb" },
    handlers = {}
})

dap.configurations.cpp = {
    { type = "codelldb",
    request = "launch",
    name = "launch file",
    program = "${file}" }
}

-- automatically open dapUI when debugger is initialized
dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
