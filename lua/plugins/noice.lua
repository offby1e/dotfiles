return {
  {
    "folke/noice.nvim",
    lazy = false,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      "nvim-telescope/telescope.nvim", -- optional
    },
    config = function()
      require("noice").setup({
        lsp = {
          progress = { enabled = true },
          hover = { enabled = true },
          signature = { enabled = true },
        },
        cmdline = {
          enabled = true,
        },
        notify = {
          enabled = true,
        },
        views = {
          my_side_view = {
            backend = "popup",
            relative = "editor",
            position = {
              row = "95%", -- 아래쪽 (0~100%)
              col = "98%", -- 오른쪽 끝
            },
            size = {
              width = 40,
              height = "auto",
            },
            border = {
              style = "rounded",
            },
            win_options = {
              winblend = 30,
              winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
            },
            timeout = 5000,
          },
        },
        messages = {
          enabled = true,
          view = "my_side_view", -- 내가 만든 작고 사이드에 뜨는 뷰 사용
          view_error = "my_side_view",
          view_warn = "my_side_view",
          view_history = "popup",
          view_search = "virtualtext",
        },

        presets = {
          bottom_search = true,          -- `/` 검색 입력창을 아래로
          command_palette = true,        -- `:` 입력을 중앙 플로팅창으로
          long_message_to_split = false, -- 긴 메시지를 split이 아닌 플로팅으로
        },
      })

      -- notify를 noice (nvim-notify)로 연결
      vim.notify = require("notify")
    end,
  },
}
