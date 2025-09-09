return {
  -- Copilot.lua (자동완성)
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = { "VimEnter" },
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = false,
          keymap = {
            accept = "<C-a>",
            next = "<M-j>",
            prev = "<M-k>",
          },
        },
        panel = { enabled = false },
        should_attach = function(bufnr)
          local ft = vim.bo[bufnr].filetype
          if ft == "help" or ft == "gitcommit" then
            return false
          end
          return true
        end,
      })
    end,
  },

  -- Copilot-cmp (nvim-cmp와 연동)
  {
    "zbirenbaum/copilot-cmp",
    dependencies = "copilot.lua",
    event = { "InsertEnter" },
    config = function()
      require("copilot_cmp").setup({
        -- 필요시 추가 설정 가능
      })
    end,
  },

  -- CopilotChat.nvim (Chat)
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "zbirenbaum/copilot.lua",
    },
    cmd = "CopilotChat",
    config = function()
      require("CopilotChat").setup({
        show_help_at_start = false,
        -- 채팅창 레이아웃 및 테두리 설정
        window = {
          layout = "vertical", -- 수직 분할
          width = 0.5,         -- 화면 너비의 50% 사용
        },
        border = "rounded",    -- 둥근 테두리 사용
      })

      -- 하이라이트 그룹을 직접 수정해 채팅창 색상 변경
      -- 원하는 색상 코드로 변경 가능
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "CopilotChat",
        callback = function()
          vim.api.nvim_set_hl(0, "CopilotChatNormal", { fg = "#cdd6f4", bg = "#1e1e2e" })
          vim.api.nvim_set_hl(0, "CopilotChatUser", { fg = "#89b4fa" })
          vim.api.nvim_set_hl(0, "CopilotChatResponse", { fg = "#a6e3a1" })
          vim.api.nvim_set_hl(0, "CopilotChatBorder", { fg = "#b4befe" })
          vim.api.nvim_set_hl(0, "markdownCodeBlock", { bg = "#313244" })
        end,
      })

      -- 단축키 설정
      vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChat<cr>", { desc = "Open Copilot Chat" })
      vim.keymap.set("n", "<leader>cce", "<cmd>CopilotChatExplain<cr>", { desc = "Explain code" })
      vim.keymap.set("v", "<leader>ccr", "<cmd>CopilotChatReview<cr>", { desc = "Review selected code" })
    end,
  },
}
