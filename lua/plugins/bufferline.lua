return {
	"akinsho/bufferline.nvim",
	dependencies = { "kyazdani42/nvim-web-devicons" }, -- 아이콘을 위한 의존성
	config = function()
		require("bufferline").setup({
			options = {
				numbers = "none", -- 버퍼 번호 표시 여부
				close_command = "bdelete! %d", -- 버퍼 닫기 명령어
				right_mouse_command = "bdelete! %d", -- 오른쪽 클릭 시 버퍼 닫기
				left_mouse_command = "buffer %d", -- 왼쪽 클릭 시 해당 버퍼로 이동
			},
		})
	end,
}
