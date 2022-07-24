local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	[[]],
	[[]],
	[[]],
	[[]],
	[[]],
	[[]],
	[[]],
	[[]],
	[[]],
	[[]],
	[[░█▀█░█▀▀░█▀█░█░█░▀█▀░█▄█]],
    [[░█░█░█▀▀░█░█░▀▄▀░░█░░█░█]],
    [[░▀░▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀]],
}

dashboard.section.header.opts.position = "center"

dashboard.section.buttons.val = {
	dashboard.button("e", "  New File", ":ene <BAR> startinsert<CR>"),
	dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
	dashboard.button("o", "  Old File", ":Telescope oldfiles<CR>"),
	dashboard.button("c", "  Packer", ":e ~/.config/nvim/lua/plugin/packer.lua<CR>"),
	dashboard.button("q", "ﴚ  Quit", ":quitall!<CR>"),
}

alpha.setup(dashboard.config)
