vim.g.mapleader = " "

vim.keymap.set("n", "<Leader>pv", ":NvimTreeFocus<CR>", {})

vim.keymap.set("n", "<CR>", "<nop>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set("n", "<leader>br", require'dap'.toggle_breakpoint, {})
vim.keymap.set("n", "<leader>ccbr", function() require'dap'.set_breakpoint(vim.fn.input("Condition: ")) end)
vim.keymap.set("n", "<leader>cbr", require'dap'.clear_breakpoints, {})
vim.keymap.set("n","<C-F5>", require'dap'.continue, {})
vim.keymap.set("n","<C-F6>", require'dap'.step_over, {})
vim.keymap.set("n","<C-F7>", require'dap'.step_into, {})
vim.keymap.set("n","<C-F8>", require'dap'.step_out, {})
vim.keymap.set("n","<C-F9>", require'dap'.step_out, {})
vim.keymap.set("n","<leader>lp", function() require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
    require('dap.ui.widgets').hover()
end)
vim.keymap.set("n","<leader>dt", require'dap'.terminate, {})

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set('n', '<leader>cmb', ':CMakeBuild<CR>', {})
vim.keymap.set('n', '<leader>cmr', ':CMakeRun<CR>', {})
vim.keymap.set('n', '<Leader>cmd', ':CMakeDebug<CR>', {})
vim.keymap.set('n', '<Leader>cmg', ':CMakeGenerate<CR>', {})

vim.keymap.set("n", "<C-f>", ":silent !tmux neww tmux-sessionizer<CR>")

-- quickfix navigation
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<A-o>", ":ClangdSwitchSourceHeader<CR>")
vim.keymap.set("n", "<leader>o", "o<ESC>")
vim.keymap.set("n", "<leader>O", "O<ESC>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
