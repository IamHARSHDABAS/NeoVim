-- Changing <LEADER> to <SPACE>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Remaps
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- TODO
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
