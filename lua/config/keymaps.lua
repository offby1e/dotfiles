local mapKey = require("utils.KeyMapper").mapKey

-- Neotree toggle
mapKey('<leader>e', ':Neotree toggle<cr>')

-- pane navigation
mapKey('<C-h>', '<C-w>h') --Left
mapKey('<C-j>', '<C-w>j') --Left
mapKey('<C-k>', '<C-w>k') --Left
mapKey('<C-l>', '<C-w>l') --Left


-- clear search hl
mapKey('<leader>h', ':nohlsearch<CR>')

-- indent
mapKey('<', '<gv', 'v')
mapKey('>', '>gv', 'v')
