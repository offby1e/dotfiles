return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- 헤더 설정
		dashboard.section.header.val = {
			[[                             . .  ,  ,                                    , ,\/\/\           ]],
			[[                            |` \/ \/ \,',                          , |\|\|`     :           ]],
			[[                            ;          ` \/\,.               .-.|`              \           ]],
			[[                           :               ` \,/            \-\                  \          ]],
			[[                           |                  /              \                    :         ]],
			[[                           ;                 :                \          ____ ,-^-.         ]],
			[[                          :                  ;                 \       ,'    `.   o\        ]],
			[[                          |      ,---.      /                   \     (    o  :    ;        ]],
			[[                         :     ,'     `,-._ \                    \     \      ;`-"' )       ]],
			[[                         ;    (   o    \   `'                     \_    `-..-'   -'(        ]],
			[[                       _:      .      ,'  o ;                    ,'a`               \       ]],
			[[                      /,.`      `.__,'`-.__,                     `._,'   ,           )      ]],
			[[                      \_  _               \                         \   '`----=-----'       ]],
			[[                     ,'  / `,          `.,'                         ;       ,-'             ]],
			[[               ___,'`-._ \_/ `,._        ;                         /        \               ]],
			[[            __;_,'      `-.`-'./ `--.____)                       ,'          \              ]],
			[[         ,-'           _,--\^-'                                 ;             \             ]],
			[[       ,:_____      ,-'     \                                  '    ,        \ \            ]],
			[[      (,'     `--.  \;-._    ;                                /    /    .    .) \           ]],
			[[      :    Y      `-/    `,  :                               :    /           \  \          ]],
			[[      :    :       :     /_;'                                ;   |;            \  :         ]],
			[[      :    :       |    :                                    ;   |              | |         ]],
			[[       \    \      :    :                                    \   |          .   | :         ]],
			[[        `-._ `-.__, \    `.                                  )   \             ,' |         ]],
			[[           \   \  `. \     `.                                ,    ) ,----------|_;;         ]],
			[[         ,-;    \---)_\ ,','/                               (_/ //  | CENSORED |            ]],
			[[         \_ `---'--'" ,'^-;'                                  `' |  |__________|            ]],
			[[         (_`     ---'" ,-')                                      |     ; |    |             ]],
			[[         / `--.__,. ,-'    \                                     |     | |    |             ]],
			[[         )-.__,-- ||___,--' `-.                                  |     |,'    `-._          ]],
			[[        /._______,|__________,'\                                 |     `-._    `..)         ]],
			[[        `--.____,'|_________,-'                                  |       `.;""---`          ]],
			[[                                                                  `--._;_)-'                ]],
		}

		-- 버튼 설정
		dashboard.section.buttons.val = {
			dashboard.button("e", "📜  > New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "🔎  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
			dashboard.button(" n", "⚡  > Lazy panel", ":Lazy<CR>"),
			dashboard.button("s", "⚙️   > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
			dashboard.button("q", "🚩  > Quit", ":qa<CR>"),
		}

		-- 푸터 설정 (fortune 사용)
		local fortune = require("alpha.fortune") -- fortune 모듈 사용
		dashboard.section.footer.val = fortune() -- 푸터에 fortune 내용 설정

		-- 대시보드 설정
		dashboard.config.opts.noautocmd = true

		-- 대시보드 적용
		alpha.setup(dashboard.config)
	end,
}
