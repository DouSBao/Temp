-- basic options
local basic_options = {
	relativenumber = true,			-- relative number is easy to jump
	number = true,					-- show current line number
	compatible = false,				-- disable vi features
	hidden = true, 					-- no ask wihle switching buffer
	wrap = false,					-- no not wrap a line when its too long
	tabstop = 4,					-- four spaces for tab
	shiftwidth = 4,					-- be same with tab
	incsearch = true,				-- trace the result when typing search
	showmode = false,				-- no need to show mode status
	smartindent = true,				-- auto apply correct indent for new line
	cursorline = true,				-- highlight cursor line
	pumheight = 10,					-- maximum height for cmp autocompletion menu
	timeoutlen = 0,					-- no waiting time for which-key
}

for k, v in pairs(basic_options) do
	vim.opt[k] = v
end
