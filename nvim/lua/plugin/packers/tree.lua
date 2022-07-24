-- there is really no need to change the default config the tree. 
require("nvim-tree").setup{
	-- could change root node by :cd
	sync_root_with_cwd = true,

	-- only the first letter is allowed for cursor
	hijack_cursor = true,

	-- show dotfiles as two dots
	renderer = {
		root_folder_modifier = ":t:e",
	},

	-- update focused file
	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
	},

	-- show diagnostics
	diagnostics = {
		enable = true,
	},

	-- size
	view = {
		adaptive_size = true,
		side = "left",
	}
}
