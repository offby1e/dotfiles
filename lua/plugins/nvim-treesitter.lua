return {
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
          ensure_installed = { "lua", "python", "c", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
          autotag = { enable = true },
        })
      end
    },
    {
      "windwp/nvim-ts-autotag",
      event = "VeryLazy",
      dependencies = "nvim-treesitter/nvim-treesitter",
      config = true,
    }
}
