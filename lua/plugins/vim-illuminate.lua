return {
	{
		"RRethy/vim-illuminate",
		config = function()
			require("illuminate").configure({
				-- 기본 설정
				providers = { "lsp", "treesitter", "regex" }, -- 하이라이트 데이터 소스
				delay = 120, -- 하이라이트 지연 시간(ms)
				filetypes_denylist = { "NvimTree", "packer", "alpha" }, -- 제외할 파일 유형
				under_cursor = true, -- 커서 아래 단어 강조
			})
		end,
	},
}
