local mapKey = require("utils.KeyMapper").mapKey

-- Neotree toggle
mapKey("<leader>e", ":Neotree toggle<cr>")

-- pane navigation
mapKey("<C-h>", "<C-w>h") --Left
mapKey("<C-j>", "<C-w>j") --Left
mapKey("<C-k>", "<C-w>k") --Left
mapKey("<C-l>", "<C-w>l") --Left

--move directory
vim.api.nvim_set_keymap("n", "<leader>nc", ":cd /root/.config/nvim<CR>:pwd<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ws", ":cd /home/rkdgus06/dev<CR>:pwd<CR>", { noremap = true, silent = true })
-- buffer

-- 버퍼 탐색
vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

-- 버퍼 이동
vim.api.nvim_set_keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })

-- 버퍼 닫기
vim.api.nvim_set_keymap("n", "<leader>c", ":bdelete<CR>", { noremap = true, silent = true })

-- clear search hl
mapKey("<leader>h", ":nohlsearch<CR>")

-- indent
mapKey("<", "<gv", "v")
mapKey(">", ">gv", "v")

-- next line(command mode)
vim.keymap.set("n", "<Leader>o", "o<Esc>", { desc = "Insert new line below without entering insert mode" })
vim.keymap.set("n", "<Leader>O", "O<Esc>", { desc = "Insert new line above without entering insert mode" })

-- ESC replacement key
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape insert mode using jk" })
--speed limit(max wait time limit)
vim.opt.timeoutlen = 300

-- save & quit command
vim.keymap.set("n", "<Leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<Leader>q", ":q<CR>", { desc = "Quit file" })
vim.keymap.set("n", "<Leader>x", ":wq<CR>", { desc = "Save and quit" })
