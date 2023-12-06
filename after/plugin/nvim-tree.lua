-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = false,
  },
  filters = {
    dotfiles = false,
    git_ignored = false,
    custom = { "^.git$", "^.cache$" }
  },
  update_focused_file = {
      enable = true
  }
})

