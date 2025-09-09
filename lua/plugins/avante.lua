return {
  "yetone/avante.nvim",
  build = function()
    -- 운영체제에 따라 빌드 명령을 설정합니다.
    if vim.fn.has('win32') == 1 then
      vim.fn.jobstart({ "cargo.exe", "install", "--path", "." }, {})
    else
      vim.fn.jobstart({ "cargo", "install", "--path", "." }, {})
    end
  end,
  opts = {
    -- 사용할 AI provider를 선택하세요.
    -- 현재는 Gemini로 설정되어 있습니다. OpenAI를 사용하려면 아래의 "Gemini 설정" 부분을 주석 처리하고
    -- "OpenAI 설정" 부분의 주석을 해제하면 됩니다.

    -- # Gemini 설정 (무료 사용 한도 초과 시 유료)
    provider = "gemini",
    google = {
      endpoint = "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent",
      model = "gemini-pro",
      timeout = 30000, -- ms
      temperature = 0,
      max_tokens = 4096,
    },

    -- # OpenAI 설정 (무료 크레딧 소진 시 유료)
    -- provider = "openai",
    -- openai = {
    --   endpoint = "https://api.openai.com/v1/chat/completions",
    --   model = "gpt-4o", -- 또는 gpt-3.5-turbo 등
    --   timeout = 30000, -- ms
    --   temperature = 0,
    --   max_tokens = 4096,
    -- },
  },
}
