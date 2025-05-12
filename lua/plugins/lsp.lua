local keyMapper = require("utils.KeyMapper").mapKey

local showWarnings = true -- 초기 상태: 경고 보임

local function toggleWarnings()
	showWarnings = not showWarnings

	if showWarnings then
		vim.diagnostic.config({
			virtual_text = true,
			signs = true,
			underline = true,
		})
		print("🔔 Warnings shown")
	else
		vim.diagnostic.config({
			virtual_text = { severity = { min = vim.diagnostic.severity.ERROR } },
			signs = { severity = { min = vim.diagnostic.severity.ERROR } },
			underline = { severity = { min = vim.diagnostic.severity.ERROR } },
		})
		print("🔕 Warnings hidden")
	end
end

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "remark_ls", "clangd", "pylsp" },
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.remark_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.pylsp.setup({})

			keyMapper("K", vim.lsp.buf.hover)
			keyMapper("gd", vim.lsp.buf.definition)
			keyMapper("<leader>ca", vim.lsp.buf.code_action)

			-- 🟢 LSP 경고 토글 키맵 추가
			keyMapper("<leader>tw", toggleWarnings)
		end,
	},
}
