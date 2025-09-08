return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = { "VimEnter" },
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,       -- 인라인 제안 활성화 (nvim-cmp와 함께 사용 가능)
          auto_trigger = false, -- 자동 트리거 비활성화
          keymap = {
            accept = "<C-a>",   -- 제안 수락 키
            next = "<M-j>",     -- 다음 제안 키
            prev = "<M-k>",     -- 이전 제안 키
          },
        },
        panel = { enabled = false },
      })
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = "copilot.lua",
    event = { "InsertEnter" },
    config = function()
      require("copilot_cmp").setup({
        -- Copilot-cmp 설정 (특별한 설정을 추가할 필요 없음)
      })
    end,
  },
}
