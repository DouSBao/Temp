-- prepare
local keymap = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- set leader if not set
if not vim.g.mapleader then
	keymap('', '<Space>', '<Nop>', opt)
	vim.g.mapleader = " "
end

-- buffer movement
keymap('n', '<S-Right>', ':bnext<CR>', opt)
keymap('n', '<S-Left>', ':bprevious<CR>', opt)

-- buffer close
keymap('n', '<S-q>', ':bdelete<CR>', opt)

-- window movement
keymap('n', '<C-Left>', ':wincmd h<CR>', opt)
keymap('n', '<C-Right>', ':wincmd l<CR>', opt)
keymap('n', '<C-Up>', ':wincmd k<CR>', opt)
keymap('n', '<C-Down>', ':wincmd j<CR>', opt)

-- window close
keymap('n', '<C-q>', ':quit<CR>', opt)

-- leave nvim
keymap('n', '<Leader>qq', ':quitall!<CR>', opt)
