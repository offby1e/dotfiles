return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                                      ",
      "    ▄▄▄██▀▀▀▒█████ ▓██   ██▓ ▄▄▄▄    ▒█████ ▓██   ██▓ ",
      "      ▒██  ▒██▒  ██▒▒██  ██▒▓█████▄ ▒██▒  ██▒▒██  ██▒ ",
      "      ░██  ▒██░  ██▒ ▒██ ██░▒██▒ ▄██▒██░  ██▒ ▒██ ██░ ",
      "   ▓██▄██▓ ▒██   ██░ ░ ▐██▓░▒██░█▀  ▒██   ██░ ░ ▐██▓░ ",
      "    ▓███▒  ░ ████▓▒░ ░ ██▒▓░░▓█  ▀█▓░ ████▓▒░ ░ ██▒▓░ ",
      "    ▒▓▒▒░  ░ ▒░▒░▒░   ██▒▒▒ ░▒▓███▀▒░ ▒░▒░▒░   ██▒▒▒  ",
      "    ▒ ░▒░    ░ ▒ ▒░ ▓██ ░▒░ ▒░▒   ░   ░ ▒ ▒░ ▓██ ░▒░  ",
      "    ░ ░ ░  ░ ░ ░ ▒  ▒ ▒ ░░   ░    ░ ░ ░ ░ ▒  ▒ ▒ ░░   ",
      "    ░   ░      ░ ░  ░ ░      ░          ░ ░  ░ ░      ",
      "                    ░ ░           ░          ░ ░      ",
      "                                                      ",
    }

    -- 버튼 설정
    -- 버튼 설정
    dashboard.section.buttons.val = {
      dashboard.button("n", "📜  > New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "🔎  > Find file", ":Telescope find_files cwd=$PWD<CR>"),
      dashboard.button("l", "⚡  > Lazy panel", ":Lazy<CR>"),
      dashboard.button("c", "⚙️  > Configurations",
        ":e ~/.config/nvim/init.lua | :cd %:p:h | split . | wincmd k | pwd<CR>"),
      dashboard.button("t", "📑  > Todo list", ":e ~/Documents/todolist.md<CR>"), -- 예시: To-do 리스트 열기
      dashboard.button("r", "🔄  > Recent files", ":Telescope oldfiles<CR>"), -- 최근 파일 열기
      dashboard.button("q", "🚩  > Quit", ":confirm qa<CR>"), -- 두 번 누르는 안전장치 추가
    }

    -- 푸터 설정 (fortune 사용)
    local fortune = require("alpha.fortune") -- fortune 모듈 사용
    dashboard.section.footer.val = fortune() -- 푸터에 fortune

    -- 대시보드 설정
    dashboard.config.opts.noautocmd = true

    -- 대시보드 적용
    alpha.setup(dashboard.config)
  end,
}
