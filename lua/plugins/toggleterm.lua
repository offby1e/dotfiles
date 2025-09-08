return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shade_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      direction = "float", -- 플로팅 터미널 사용
      float_opts = {
        border = "curved", -- 테두리 스타일: single, double, shadow, curved 등 가능
        winblend = 5,      -- 배경 투명도
        highlights = {
          border = "FloatBorder",
          background = "NormalFloat",
        },
      },
    })

    -- 테두리 및 배경 색상 하이라이트 설정 (colorscheme에 따라 조절)
    vim.cmd([[
      highlight FloatBorder guifg=#7dcfff guibg=#1a1b26
      highlight NormalFloat guibg=#1a1b26
    ]])
  end,
}
