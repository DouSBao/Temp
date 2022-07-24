-- keymaps for plugins
-- prepare
local keymap = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- set leader if not set
if not vim.g.mapleader then
	keymap('', '<Space>', '<Nop>', opt)
	vim.g.mapleader = " "
end

-- telescope
keymap('n', '<Esc>', ':Telescope<CR>', opt)

-- nvim-tree
keymap('n', '<C-n>', ':NvimTreeToggle<CR>', opt)

-- lsp
keymap('n', '<Leader>lf', ':lua vim.diagnostic.open_float()<CR>', opt)
keymap('n', '<Leader>ld', ':lua vim.lsp.buf.declaration()<CR>', opt)
keymap('n', '<Leader>lh', ':lua vim.lsp.buf.hover()<CR>', opt)
keymap('n', '<Leader>ln', ':lua vim.lsp.buf.rename()<CR>', opt)

-- trouble 
keymap('n', '<Leader>le', ':Trouble workspace_diagnostics<CR>', opt)
keymap('n', '<Leader>lr', ':Trouble lsp_references<CR>', opt)

-- comment
keymap('n', '<Leader>c', ':CommentToggle<CR>', opt)
keymap('v', '<Leader>c', ':CommentToggle<CR>', opt)

-- outline
keymap('n', '<Leader>o', ':SymbolsOutline<CR>', opt)

-- dap
keymap('n', '<Leader>db', ':lua require"dap".toggle_breakpoint()<CR>', opt)
keymap('n', '<F5>', ':DapContinue<CR>', opt)
keymap('n', '<F6>', ':DapTerminate<CR>', opt)
keymap('n', '<F10>', ':DapStepOver<CR>', opt)
keymap('n', '<F11>', ':DapStepInto<CR>', opt)
keymap('n', '<F12>', ':DapStepOut<CR>', opt)
keymap('n', '<Leader>de', ':lua require"dapui".eval()<CR>', opt)
keymap('v', '<Leader>de', ':lua require"dapui".eval()<CR>', opt)
keymap('n', '<Leader>dw', ':lua require"dapui".toggle()<CR>', opt)

-- todo comments
keymap('n', '<Leader>t', ':TodoTrouble<CR>"', opt)
