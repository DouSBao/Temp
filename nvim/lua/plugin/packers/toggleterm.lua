require('toggleterm').setup{
	-- use float window
	direction = "float",

	-- usual keymap 
	open_mapping = [[<C-\>]],

	-- border
	float_opts = {
		border = {"+", "-", "+", "|", "+", "-", "+", "|"},
	},
}
