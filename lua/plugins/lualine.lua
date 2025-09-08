return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "nordic", -- 북유럽 테마를 설정
        section_separators = { "", "" }, -- 섹션 구분 기호
        component_separators = { "", "" }, -- 컴포넌트 구분 기호
        globalstatus = true, -- 전체 화면 상태라인 적용
      },
      sections = {
        -- 왼쪽 섹션: 파일명, 파일 인코딩, 파일 형식
        lualine_a = { "mode" },     -- 모드 표시 (예: Normal, Insert 등)
        lualine_b = { "branch" },   -- Git 브랜치 표시
        lualine_c = { "filename" }, -- 파일명 표시
        -- 오른쪽 섹션: 인코딩, 파일 형식, 진행상황, 위치, 시간
        lualine_x = { "encoding", "fileformat" },
        lualine_y = { "progress" },
        lualine_z = {
          "location",                  -- 커서 위치
          function()
            return os.date("%H:%M:%S") -- 시간 표시
          end,
        },
      },
      refresh = {
        statusline = 500, -- 500ms마다 상태라인 새로 고침
      },
    })
  end,
}
