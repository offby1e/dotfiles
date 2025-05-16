-- plugins/ctags.lua
return {
  {
    "ludovicchabant/vim-gutentags",
    config = function()
      vim.g.gutentags_enabled = 1
      vim.g.gutentags_generate_on_write = 1
      vim.g.gutentags_generate_on_missing = 1
      vim.g.gutentags_project_root = { '.git', '.hg', '.svn', '.root' }
      vim.g.gutentags_ctags_extra_args = { '--fields=+l' }
    end
  },
  {
    "preservim/tagbar",
    cmd = "TagbarToggle",
    keys = {
      { "<F8>", ":TagbarToggle<CR>", desc = "Toggle Tagbar" }
    }
  }
}
