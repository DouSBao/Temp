-- treesitter baisc config
require("nvim-treesitter.configs").setup {
	-- A list of parser names, or "all"
	ensure_installed = {"c", "lua", "cpp", "make"},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	auto_install = true,

	-- List of parsers to ignore installing (for "all")
	ignore_install = {},

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},

	-- enable autopairs
	autopairs = {
		enable = true,
	},

	-- enable indent
	indent = {
		endbale = true,
	},
}

-- advance config
-- use git to download instead of curl
require("nvim-treesitter.install").prefer_git = true
