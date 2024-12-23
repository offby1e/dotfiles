return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                            . .  ,  ,                                    , ,\/\/\           ]],
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

		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "  > Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
			dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
			dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
		}

		local handle = io.popen("fortune")
		local fortune = handle:read("*a")
		handle:close()
		dashboard.section.footer.val = fortune
		dashboard.config.opts.noautocmd = true
		vim.cmd([[autocmd User AlphaReady echo 'ready']])
		alpha.setup(dashboard.config)
	end,
}
