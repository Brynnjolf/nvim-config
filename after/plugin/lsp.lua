local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      "clangd",
      "lua_ls"
  },
  handlers = {
      lsp_zero.default_setup,
        -- Lua Language seup
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
  },
})



local cmp_action = lsp_zero.cmp_action()
require("cmp").setup({
    mapping = {
        ['<C-j>'] = cmp_action.luasnip_jump_forward(),
        ['<C-k>'] = cmp_action.luasnip_jump_backward(),
    }
})


