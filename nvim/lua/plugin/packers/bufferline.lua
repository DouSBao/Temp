-- basic settings for bufferline
require("bufferline").setup{
	options = {
		-- the origin icon is ugly and unusual
		modified_icon = '*',
		-- no need to use mouse, same as close icon
		show_close_icon = false,
		-- always show buffer line
		always_show_bufferline = true,
		-- disable separator. better look
		separator_style = "padded_slant",
	},

	highlights = {
		-- bold italic is unacceptable!
		buffer_selected = {
			gui = "bold"
		},
	},
}
