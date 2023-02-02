-- Changing <LEADER> to <SPACE>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Remaps
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
