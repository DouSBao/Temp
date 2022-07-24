-- prepare
local cmp = require('cmp')

local kind_icons = {
	Text = "",
	Method = "",
	Function = "",
	Constructor = "",
	Field = "",
	Variable = "",
	Class = "ﴯ",
	Interface = "",
	Module = "",
	Property = "ﰠ",
	Unit = "",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = ""
}

require("luasnip.loaders.from_vscode").lazy_load()

-- cmp startup and basic config settings
cmp.setup{
	-- required to provide snippet expand function
	snippet = {
    	expand = function(args)
      		require('luasnip').lsp_expand(args.body)
    	end,
  	},

	-- option settings
	----------------------------------------
	enabled = true,
	
	-- disable preselect
	preslect = cmp.PreselectMode.None,
	

	-- enable ghost_test
	experimental = {
		ghost_test = true,
	},

	-- mappings
	----------------------------------------
	mapping = {
		['<Tab>'] = cmp.mapping.select_next_item(),
		['<S-Tab>'] = cmp.mapping.select_prev_item(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm(),
	},

	-- source of cmp
	----------------------------------------
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer", keyword_length = 2 },
		{ name = "path" },
	},

	-- format of completion menu
	-----------------------------------------
	formatting = {
		fields = { "kind", "abbr", "menu" },

		format = function(entry, vim_item)
			-- add icon and entry description 
			vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
			vim_item.menu = ({
				nvim_lsp = "[LSP]",
				buffer = "[Buffer]",
				path = "[Path]",
				cmdline = "[Builtin]",
			})[entry.source.name]

			return vim_item
		end
	},
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
}

-- enable completion for cmd line
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "nvim_lsp" },
		{ name = "cmdline" },
		{ name = "path" },
	}
})

cmp.setup.cmdline('/', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer", keyword_length = 2 },
	}
})
