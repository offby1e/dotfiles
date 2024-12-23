return {
	"akinsho/toggleterm.nvim", -- 플러그인 경로
	version = "*", -- 버전 설정
	config = function()
		require("toggleterm").setup({
			size = 20, -- 터미널 크기
			open_mapping = [[<c-\>]], -- 터미널 열기 단축키
			hide_numbers = true, -- 숫자 숨기기
			shade_filetypes = {}, -- 특정 파일 타입에 대해 쉐이드 설정
			shade_terminals = true, -- 터미널 배경 흐리게 처리
			start_in_insert = true, -- 터미널 시작 시 자동으로 입력 모드
			insert_mappings = true, -- 터미널 insert 모드에서의 매핑 활성화
			terminal_mappings = true, -- 터미널 내부 매핑 활성화
		})
	end,
}
