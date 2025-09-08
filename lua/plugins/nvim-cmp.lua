return {
  {
    "hrsh7th/nvim-cmp",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      -- Snipetts
      {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
        dependencies = "saadparwaiz1/cmp_luasnip",
      },
      "rafamadriz/friendly-snippets",

      -- LSP
      "hrsh7th/cmp-nvim-lsp",

      -- Basic Completion Sources
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",

      -- Copilot
      "zbirenbaum/copilot.lua",
      "zbirenbaum/copilot-cmp",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      -- load snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      -- Copilot 설정
      require("copilot").setup({
        suggestion = { enabled = false }, -- nvim-cmp와 충돌 방지를 위해 인라인 제안 비활성화
        panel = { enabled = false },      -- 패널 비활성화
      })

      -- copilot-cmp 설정
      require("copilot_cmp").setup()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered({
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
            winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:PmenuSel",
            scrollbar = false,
          }),
          documentation = cmp.config.window.bordered({
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
            winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder",
          }),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        -- 자동 완성 소스 우선순위 설정
        sources = cmp.config.sources({
          { name = "copilot" },  -- 1. Copilot (가장 높은 우선순위)
          { name = "nvim_lsp" }, -- 2. LSP
          { name = "luasnip" },  -- 3. Snippets
          { name = "buffer" },   -- 4. 버퍼
          { name = "path" },     -- 5. 경로
        }),
      })
    end,
  },
}
