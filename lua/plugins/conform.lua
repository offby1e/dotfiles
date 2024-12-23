return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", "prettier" },
				typescript = { "prettierd", "prettier" },
				javascriptreact = { "prettierd", "prettier" },
				typescriptreact = { "prettierd", "prettier" },
				python = {
					"isort", -- isort를 단순히 추가
					"black", -- black 포맷터 추가
				},
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
			stop_after_first = true, -- 전역 설정으로 stop_after_first 추가
			args_by_ft = {
				python = { { name = "black", args = { "--line-length=79" } } },
			},
		})
	end,
}
