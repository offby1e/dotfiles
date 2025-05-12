# 🚀 **neovim_config**

This repository contains the Neovim configuration files and setup, customized to enhance the efficiency and productivity of developers using Neovim as a code editor.

## 📑 Table of Contents
- [Installation](#installation)
- [Plugins](#plugins)
- [Key Bindings](#key-bindings)
- [Customization](#customization)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## 💻 Installation

1. Clone the repository to your local machine:
    ```sh
    git clone https://github.com/rkdgus0810/neovim_config.git ~/.config/nvim
    ```

2. Install necessary plugins using the plugin manager [lazy.nvim](https://github.com/folke/lazy.nvim):
    ```lua
    -- Add the following line to your init.lua or plugins.lua file
    require('lazy').setup('plugins')

    -- Then, open Neovim and run the following command in command mode:
    :Lazy sync
    ```

## 📦 Plugins

This configuration uses the following plugins:

- 🌟 [alpha-nvim](https://github.com/goolord/alpha-nvim): Neovim start screen.
- 📂 [bufferline.nvim](https://github.com/akinsho/bufferline.nvim): Buffer line management.
- 📝 [nvim-comment](https://github.com/terrortylor/nvim-comment): Comment management.
- 🔧 [conform.nvim](https://github.com/conform-nvim/conform.nvim): Code formatter.
- ⬇️ [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim): Indentation guides.
- ⚡ [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig): LSP configuration.
- 🎚️ [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim): Status line.
- 📁 [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim): File explorer.
- ❄️ [nord.nvim](https://github.com/shaunsingh/nord.nvim): Nord theme.
- 🌀 [nvim-autopairs](https://github.com/windwp/nvim-autopairs): Automatic bracket completion.
- 🔍 [nvim-cmp](https://github.com/hrsh7th/nvim-cmp): Code completion.
- 🌳 [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter): Syntax highlighting.
- ✂️ [nvim-ufo](https://github.com/kevinhwang91/nvim-ufo): Code folding.
- 🔎 [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim): Fuzzy finder and file search.
- 🖥️ [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim): Built-in terminal.

### 🔧 Plugin Configuration Example

#### alpha-nvim
```lua
require'alpha'.setup(require'alpha.themes.startify'.config)
