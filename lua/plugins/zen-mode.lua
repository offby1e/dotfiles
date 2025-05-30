return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode", -- 명령어로만 로딩되게 설정 (선택사항)
  config = function()
    require("zen-mode").setup({
      window = {
        backdrop = 0.95,
        width = 80,
        options = {
          signcolumn = "no",
          number = false,
          relativenumber = false,
          cursorline = false,
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false,
          showcmd = false,
        },
        twilight = true, -- if using folke/twilight.nvim
        gitsigns = true,
        tmux = false,
      },
    })
  end,
}
