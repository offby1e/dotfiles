return {
	"folke/tokyonight.nvim", -- 플러그인 GitHub 주소
	lazy = false, -- 자동으로 로드되도록 설정 (lazy = true로 하면 수동으로 로드)
	config = function()
		-- 테마를 tokyonight로 설정
		vim.cmd("colorscheme tokyonight")
	end,
}
