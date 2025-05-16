-- 🔑 키 매핑 유틸을 vim.keymap.set으로 대체
local function mapKey(lhs, rhs, opts)
  opts = opts or {}
  vim.keymap.set("n", lhs, rhs, opts)
end

-- 🔔 진단 메시지(경고/에러) 토글 상태 변수
local showWarnings = true

-- 🔁 경고 메시지를 켜고 끄는 함수 (전역 등록)
function _G.toggleWarnings()
  showWarnings = not showWarnings

  if showWarnings then
    -- 경고 메시지를 다시 보여줌
    vim.diagnostic.config({
      virtual_text = { severity = { max = vim.diagnostic.severity.HINT } },
      signs = true,
      underline = true,
    })
    print("🔔 Warnings shown")
  else
    -- 에러만 보이도록 설정 (경고는 숨김)
    vim.diagnostic.config({
      virtual_text = { severity = { min = vim.diagnostic.severity.ERROR } },
      signs = { severity = { min = vim.diagnostic.severity.ERROR } },
      underline = { severity = { min = vim.diagnostic.severity.ERROR } },
    })
    print("🔕 Warnings hidden")
  end
end

-- 🧠 LSP 서버가 버퍼에 연결될 때 실행되는 함수
local function on_attach(client, bufnr)
  print("✅ LSP attached:", client.name)

  local opts = { buffer = bufnr }

  -- 🧭 LSP 기능 단축키 설정
  mapKey("K", vim.lsp.buf.hover, opts)
  mapKey("gd", vim.lsp.buf.definition, opts)
  mapKey("<leader>ca", vim.lsp.buf.code_action, opts)

  -- 💾 저장할 때 자동 포맷 실행
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end
end

-- 🔧 LSP 관련 플러그인 설정들 리턴
return {
  -- 📦 Mason: LSP 서버 설치 관리자
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- 🧩 Mason-lspconfig: LSP 서버 자동 설치
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "remark_ls",
          "clangd",
          "pyright",
        },
      })
    end,
  },

  -- 🧠 nvim-lspconfig: 실제 LSP 서버 설정
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local servers = { "lua_ls", "ts_ls", "remark_ls", "clangd", "pyright" }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({ on_attach = on_attach })
      end

      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",
          severity = { max = vim.diagnostic.severity.HINT },
        },
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })
    end,
  },

  -- 🔋 fidget.nvim: LSP 로딩 상태 표시
  {
    "j-hui/fidget.nvim",
    opts = {},
  },

  -- 🎨 lsp-colors.nvim: LSP 진단 메시지 색 보완
  {
    "folke/lsp-colors.nvim",
  },

  -- 💬 LSP UI 향상 (선택사항: 비활성화됨)
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    opts = {},
  },
}
