local dap = require("dap")
local dapui = require("dapui")

require("mason").setup();
require("mason-nvim-dap").setup({
    ensure_installed = { "codelldb" },
    handlers = {}
})

local venv_path = os.getenv('VIRTUAL_ENV') or os.getenv('CONDA_PREFIX')
dap.configurations.python = {
    {
        -- The first three options are required by nvim-dap
        type = 'python', -- the type here established the link to the adapter definition: `dap.adapters.python`
        request = 'launch',
        name = 'Python: Launch file',
        program = '${file}', -- This configuration will launch the current file if used.
        pythonPath = venv_path and (venv_path .. '/bin/python') or nil,
    },
    --{
        ---- The first three options are required by nvim-dap
        --type = 'python', -- the type here established the link to the adapter definition: `dap.adapters.python`
        --request = 'launch',
        --name = 'Python: Launch File (scrapy)',
        --module = "scrapy",
        --args = { "runspider", "${file}"},
        --pythonPath = venv_path and (venv_path .. '/bin/python') or nil,
    --},
}

-- automatically open dapUI when debugger is initialized

dapui.setup({
    layouts = { {
        elements = { {
            id = "console",
            size = 0.25
        }, {
            id = "breakpoints",
            size = 0.25
        }, {
            id = "stacks",
            size = 0.25
        }, {
            id = "watches",
            size = 0.25
        } },
        position = "left",
        size = 40
    }, {
        elements = { {
            id = "scopes",
            size = 0.75
        }, {
            id = "repl",
            size = 0.25
        } },
        position = "bottom",
        size = 10
    } },

})

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
