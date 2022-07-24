-- startup lsp installer
require('nvim-lsp-installer').setup{}

-- diagnostic framework config setting
-- do not use sign
local signs = {
	{ name = "DiagnosticSignError", text = "" },
	{ name = "DiagnosticSignWarn", text = "" },
	{ name = "DiagnosticSignHint", text = "" },
	{ name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
	vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

-- config
local config = {
	-- underline diagnostic
	underline = true,
	-- use virtual_text
	virtual_text = true,
	-- update diagnostics in insert mode
	update_in_insert = true,
	-- error display before wran
	severity_sort = true,
	-- config for float window
	float = {
		-- only show current line's diagnostic
		scope = "line",
		-- error display before warn
		severity_sort = true,
		-- no foc
		focusable = false,
	},
}

vim.diagnostic.config(config)

-- using cmp which has more features than default lsp client, therefore need update capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- startup lsp client
local lspconfig = require('lspconfig')

-- c, cpp
lspconfig.clangd.setup{
	capabilities = capabilities,
}

-- lua
local lua_settings = {
	Lua = {
		runtime = {
			-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
			version = 'LuaJIT',
		},
		diagnostics = {
			-- Get the language server to recognize the `vim` global
			globals = {'vim'},
		},
		workspace = {
			-- Make the server aware of Neovim runtime files
			library = vim.api.nvim_get_runtime_file("", true),
		},
		-- Do not send telemetry data containing a randomized but unique identifier
		telemetry = {
			enable = false,
		},
	},
}

lspconfig.sumneko_lua.setup{
	capabilities = capabilities,
	settings = lua_settings
}

-- bashls
lspconfig.bashls.setup{}
