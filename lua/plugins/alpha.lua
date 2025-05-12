return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- 헤더 설정
		dashboard.section.header.val = {
			[[                        .,,cc,,,.                                ]],
			[[                   ,c$$$$$$$$$$$$cc,                             ]],
			[[                ,c$$$$$$$$$$??""??$?? ..                         ]],
			[[             ,z$$$$$$$$$$$P xdMMbx  nMMMMMb                      ]],
			[[            r")$$$$??$$$$" dMMMMMMb "MMMMMMb                     ]],
			[[          r",d$$$$$>;$$$$ dMMMMMMMMb MMMMMMM.                    ]],
			[[         d'z$$$$$$$>'"""" 4MMMMMMMMM MMMMMMM>                    ]],
			[[        d'z$$$$$$$$h $$$$r`MMMMMMMMM "MMMMMM                     ]],
			[[        P $$$$$$$$$$.`$$$$.'"MMMMMP',c,"""'..                    ]],
			[[       d',$$$$$$$$$$$.`$$$$$c,`""_,c$$$$$$$$h                    ]],
			[[       $ $$$$$$$$$$$$$.`$$$$$$$$$$$"     "$$$h                   ]],
			[[      ,$ $$$$$$$$$$$$$$ $$$$$$$$$$%       `$$$L                  ]],
			[[      d$c`?$$$$$$$$$$P'z$$$$$$$$$$c       ,$$$$.                 ]],
			[[      $$$cc,"""""""".zd$$$$$$$$$$$$c,  .,c$$$$$F                 ]],
			[[     ,$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$                 ]],
			[[     d$$$$$$$$$$$$$$$$c`?$$$$$$$$$$$$$$$$$$$$$$$                 ]],
			[[     ?$$$$$$$$$."$$$$$$c,`..`?$$$$$$$$$$$$$$$$$$.                ]],
			[[     <$$$$$$$$$$. ?$$$$$$$$$h $$$$$$$$$$$$$$$$$$>                ]],
			[[      $$$$$$$$$$$h."$$$$$$$$P $$$$$$$$$$$$$$$$$$>                ]],
			[[      `$$$$$$$$$$$$ $$$$$$$",d$$$$$$$$$$$$$$$$$$>                ]],
			[[       $$$$$$$$$$$$c`""""',c$$$$$$$$$$$$$$$$$$$$'                ]],
			[[       "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$F                 ]],
			[[        "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'                  ]],
			[[        ."?$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$P'  FOR FUCK'S SAKE! ]],
			[[     ,c$$c,`?$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"  THE TIME HE WASTES ]],
			[[   z$$$$$P"   ""??$$$$$$$$$$$$$$$$$$$$$$$"  IN RICING NVIM IS    ]],
			[[,c$$$$$P"          .`""????????$$$$$$$$$$c  DRIVING ME CRAZY.    ]],
			[[`"""              ,$$$L.        "?$$$$$$$$$.   WHAT'S THE MATTER ]],
			[[               ,cd$$$$$$$$$hc,    ?$$$$$$$$$c    WITH HIM ?????? ]],
			[[              `$$$$$$$$$$$$$$$.    ?$$$$$$$$$h                   ]],
			[[               `?$$$$$$$$$$$$P      ?$$$$$$$$$                   ]],
			[[                 `?$$$$$$$$$P        ?$$$$$$$$$$$$hc             ]],
			[[                   "?$$$$$$"         <$$$$$$$$$$$$$$r   FUCKING  ]],
			[[                     `""""           <$$$$$$$$$$$$$$F   KILL IT  ]],
			[[                                      $$$$$$$$$$$$$F             ]],
			[[                                      `?$$$$$$$$P"               ]],
			[[                                        "????""                  ]],
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
