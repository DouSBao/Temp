-- use packer as plugin manager

-- prepare
local ok, packer = pcall(require, "packer")
if not ok then
	io.write("error: packer not load")
	return
end

-- packer config
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "none" })
    	end,
	},
}

-- packer-managed plugin list
return packer.startup(
function(use)
	-- packer itself
	use 'wbthomason/packer.nvim'

	-- include many useful functions
	use 'nvim-lua/plenary.nvim'
	-- include many icons
	use 'kyazdani42/nvim-web-devicons'

	-- color scheme
	use 'morhetz/gruvbox'
	use 'lunarvim/colorschemes'
	use 'tomasiser/vim-code-dark'
	use 'sainnhe/gruvbox-material'

	-- status line
	use 'nvim-lualine/lualine.nvim'
	-- buffer line
	use 'akinsho/bufferline.nvim'

	-- telescope
	use 'nvim-telescope/telescope.nvim'

	-- file explorer
	use 'kyazdani42/nvim-tree.lua'

	-- smart bracket
	use 'windwp/nvim-autopairs'

	-- autocompletion tool cmp
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lsp'

	-- language server protocol
	use 'neovim/nvim-lspconfig'
	use "williamboman/nvim-lsp-installer"
    use "ray-x/lsp_signature.nvim"

	-- snippet engine is required by lsp
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'

	-- comment
	use 'terrortylor/nvim-comment'

	-- outline
	use "simrat39/symbols-outline.nvim"

	-- terminal
	use 'akinsho/toggleterm.nvim'

	-- greeter
	use 'goolord/alpha-nvim'

	-- debug
	use 'mfussenegger/nvim-dap'
	use "rcarriga/nvim-dap-ui"

	-- comment hilighting
	use "folke/todo-comments.nvim"

	-- pretty quickfix box
	use "folke/trouble.nvim"

	-- keybinding hints
	use 'folke/which-key.nvim'

	-- text hilighting, indentation and folding
  	use {
    	'nvim-treesitter/nvim-treesitter',
    	run = ":TSUpdate",
 	}
end)
