local dap = require("dap")

-- adapter and dap config
-------------------------------------------------
dap.adapters.cpp_adapter = {
	id = "cpp_adapter",
	type = "executable",
	command = "/usr/bin/lldb-vscode",
}

dap.configurations.cpp = {
-- executable
{
	name = "Launch",
	type = "cpp_adapter",
	request = "launch",
	program = function()
		return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. '/', 'file')
	end,
	cwd = '${workspaceFolder}',
	stopOnEntry = false,
	args = function()
		local args = {}

		while true do
			local input = vim.fn.input("Arguments #" .. #args .. ": ")
			if input ~= "" then
				args[#args + 1] = input
			else
				break
			end
		end

		return args
	end
},
}

dap.configurations.c = dap.configurations.cpp

-- sign config
-------------------------------------------------
local signs = {
	{ name = "DapBreakpoint", opts = {text = "", texthl = "DiffDelete"} },
	{ name = "DapStopped", opts = {text = ">>", texthl = "DiffAdd"} },
}

for _, sign in ipairs(signs) do
	vim.fn.sign_define(sign.name, sign.opts)
end

-- dap ui config
-------------------------------------------------
local ui = require("dapui")
ui.setup({
	layouts = {
		{
			elements = {
				-- Elements can be strings or table with id and size keys.
				{ id = "scopes", size = 0.25 },
				"breakpoints",
				"stacks",
				"watches",
			},
			size = 40, -- 40 columns
			position = "left",
		},
		{
			elements = {
				"repl",
			},
			size = 0.25, -- 25% of total lines
			position = "bottom",
		},
	},
})
