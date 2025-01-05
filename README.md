# neovim_config

이 레포지토리는 Neovim 설정 파일과 셋업을 포함하고 있습니다. 이 설정은 Neovim을 코드 편집기로 사용하는 개발자의 효율성과 생산성을 향상시키기 위해 맞춤화되었습니다.

## 목차
- [설치](#설치)
- [플러그인](#플러그인)
- [키 바인딩](#키-바인딩)
- [커스터마이징](#커스터마이징)
- [문제 해결](#문제-해결)
- [기여](#기여)
- [라이선스](#라이선스)

## 설치

1. 레포지토리를 로컬 머신에 클론합니다:
    ```sh
    git clone https://github.com/rkdgus0810/neovim_config.git ~/.config/nvim
    ```

2. 플러그인 관리자인 [lazy.nvim](https://github.com/folke/lazy.nvim)을 사용하여 필요한 플러그인을 설치합니다:
    ```lua
    -- init.lua 또는 plugins.lua 파일에 다음 줄을 추가합니다.
    require('lazy').setup('plugins')

    -- 이후 Neovim을 열고 명령 모드에서 다음 명령어를 실행합니다.
    :Lazy sync
    ```

## 플러그인

이 설정은 다음과 같은 플러그인을 사용합니다:

- [alpha-nvim](https://github.com/goolord/alpha-nvim): Neovim 시작 화면.
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim): 버퍼 라인 관리.
- [nvim-comment](https://github.com/terrortylor/nvim-comment): 주석 관리.
- [conform.nvim](https://github.com/conform-nvim/conform.nvim): 코드 포맷터.
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim): 들여쓰기 가이드라인.
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): LSP 설정.
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): 상태 라인.
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim): 파일 탐색기.
- [nord.nvim](https://github.com/shaunsingh/nord.nvim): Nord 테마.
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs): 자동 괄호 완성.
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp): 코드 자동 완성.
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): 구문 강조.
- [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo): 코드 폴딩.
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): 퍼지 찾기 및 파일 검색.
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim): 내장 터미널.

### 플러그인 설정 예시

#### alpha-nvim
```lua
require'alpha'.setup(require'alpha.themes.startify'.config)
