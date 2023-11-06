vim.g.mapleader = " "

vim.keymap.set("n", "<Leader>pv", ":NvimTreeFocus<CR>", {})

vim.keymap.set("n", "<C-h>", function() print("ctrl+h") end)
vim.keymap.set("n", "<C-S-h>", function() print("ctrl+H") end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>br", require'dap'.toggle_breakpoint, {})
vim.keymap.set("n","<leader>dc", require'dap'.continue, {})
vim.keymap.set("n","<A-j>", require'dap'.step_over, {})
vim.keymap.set("n","<A-l>", require'dap'.step_into, {})
vim.keymap.set("n","<A-h>", require'dap'.step_out, {})
vim.keymap.set("n","<leader>lp", function() require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
    require('dap.ui.widgets').hover()
end)
vim.keymap.set("n","<leader>dt", require'dap'.terminate, {})

vim.keymap.set("n", "<leader>=", vim.lsp.buf.format)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set('n', '<leader>cmb', ':CMakeBuild<CR>', {})
vim.keymap.set('n', '<leader>cmr', ':CMakeRun<CR>', {})
vim.keymap.set('n', '<Leader>cmd', ':CMakeDebug<CR>', {})
vim.keymap.set('n', '<Leader>cmg', ':CMakeGenerate<CR>', {})

vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<A-o>", ":ClangdSwitchSourceHeader<CR>")
