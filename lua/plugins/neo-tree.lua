return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- 아이콘 지원
    "MunifTanjim/nui.nvim",
    {
      "s1n7ax/nvim-window-picker", -- 창 선택 UI 향상
      name = "window-picker",
      event = "VeryLazy",
      config = function()
        require("window-picker").setup({})
      end,
    },
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,    -- 마지막 창이면 자동 종료
      popup_border_style = "rounded", -- 둥근 테두리
      enable_git_status = true,       -- git 상태 표시
      enable_diagnostics = true,      -- LSP 진단 정보 표시
      sort_case_insensitive = true,   -- 정렬 시 대소문자 무시
      default_component_configs = {
        indent = {
          padding = 1,
          with_markers = true,
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
        },
        git_status = {
          symbols = {
            added     = "",
            modified  = "",
            deleted   = "",
            renamed   = "",
            untracked = "",
            ignored   = "",
            unstaged  = "",
            staged    = "",
            conflict  = "",
          },
        },
      },
      window = {
        position = "left",
        width = 35,
        mappings = {
          ["<space>"] = "toggle_node",
          ["<cr>"] = "open",
          ["S"] = "open_split",
          ["s"] = "open_vsplit",
          ["t"] = "open_tabnew",
          ["P"] = { "toggle_preview", config = { use_float = true } },
          ["a"] = { "add", config = { show_path = "relative" } },
          ["d"] = "delete",
          ["r"] = "rename",
          ["y"] = "copy_to_clipboard",
          ["x"] = "cut_to_clipboard",
          ["p"] = "paste_from_clipboard",
          ["c"] = "copy",
          ["m"] = "move",
          ["q"] = "close_window",
        },
        -- window-picker 연결
        window_picker = {
          enabled = true,
          picker = "default",
          chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        },
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        filtered_items = {
          visible = false,
          hide_dotfiles = true,
          hide_gitignored = true,
          hide_by_name = {
            "node_modules",
            ".git",
            ".DS_Store",
          },
        },
      },
      buffers = {
        follow_current_file = {
          enabled = true,
        },
      },
    })
  end,
}
