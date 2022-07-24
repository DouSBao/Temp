-- prepare
local api = vim.api

-- filetype help
local help_group = api.nvim_create_augroup("FileTypeHelp", {clear = true})
api.nvim_create_autocmd("FileType", {
	group = help_group,
	pattern = "help",
	command = "wincmd L",
	desc = "auto put help window on the right",
})
