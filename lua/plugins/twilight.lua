return {
  "folke/twilight.nvim",
  cmd = "Twilight", -- 선택: 명령어로만 로딩되게
  config = function()
    require("twilight").setup({
      dimming = {
        alpha = 0.25,    -- 흐려지는 정도 (0: 투명, 1: 안 흐림)
      },
      context = 10,      -- 강조할 주변 줄 수
      treesitter = true, -- treesitter 기반 강조
    })
  end,
}
