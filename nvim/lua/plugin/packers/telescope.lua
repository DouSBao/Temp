-- prepare
local fd_opt = {
	find_command = {"fd"},
	hidden = true,
	search_dirs = {"$HOME/.config/nvim", ".", "./**/"}
}

-- telescope basic settings
require('telescope').setup{
	defaults = {
		-- do not cycle while scrolling
		scorll_strategy = "limit",

		-- nerd font is better
		prompt_prefix = " ",
		selection_caret = "",

		-- do not show full path
		path_display = {truncate = 3},

		-- a better broder
		borderchars = {"-", "|", "-", "|", "+", "+", "+", "+"},
	},
	pickers = {
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
		find_files = fd_opt,
		fd = fd_opt,
	},
	extensions = {
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		-- }
		-- please take a look at the readme of the extension you want to configure
	}
}
