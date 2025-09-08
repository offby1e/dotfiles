return {
  "folke/which-key.nvim",
  event = "VeryLazy", -- 네비게이션 시 로드 (lazy load)
  config = function()
    require("which-key").setup({
      plugins = {
        marks = true,     -- ' 마크 힌트
        registers = true, -- " 레지스터 힌트
        spelling = {
          enabled = true,
          suggestions = 20,
        },
      },
      window = {
        border = "rounded",  -- 테두리: none, single, double, shadow
        position = "bottom", -- bottom or top
        margin = { 1, 0, 1, 0 },
        padding = { 1, 2, 1, 2 },
        winblend = 5, -- 배경 투명도
      },
      layout = {
        spacing = 6,
        align = "left",
      },
      ignore_missing = true, -- 미등록 키는 무시
      show_help = true,      -- 키맵 설명 표시
    })
  end,
}
