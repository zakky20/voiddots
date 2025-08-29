-- Standalone plugins with less than 10 lines of config go here
return {
	{
		-- Tmux & split window navigation
		'christoomey/vim-tmux-navigator',
	},
	{
		-- Detect tabstop and shiftwidth automatically
		'tpope/vim-sleuth',
	},
	{
		-- Powerful Git integration for Vim
		'tpope/vim-fugitive',
	},
	{
		-- GitHub integration for vim-fugitive
		'tpope/vim-rhubarb',
	},
	{
		-- Hints keybinds
		'folke/which-key.nvim',
	},

	-- Nvim Cursorline
	{
		'yamatsum/nvim-cursorline',
		event = 'BufReadPost',
		config = function()
			require('nvim-cursorline').setup {
				cursorline = {
					enable = true,
					timeout = 0,
					number = false,
				},
				cursorword = {
					enable = false,
				},
			}
		end,
	},
	-- Noice Nvim
	-- {
	--   "folke/noice.nvim",
	--   event = "VeryLazy",
	--   dependencies = {
	--     "MunifTanjim/nui.nvim",
	--     "rcarriga/nvim-notify",
	--   },
	--   config = function()
	--     require("noice").setup({
	--       lsp = {
	--         override = {
	--           ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
	--           ["vim.lsp.util.stylize_markdown"] = true,
	--           ["cmp.entry.get_documentation"] = true,
	--         },
	--       },
	--       presets = {
	--         bottom_search = true,
	--         command_palette = true,
	--         long_message_to_split = true,
	--       },
	--     })
	--   end,
	-- },

	{
		-- Autoclose parentheses, brackets, quotes, etc.
		'windwp/nvim-autopairs',
		event = 'InsertEnter',
		config = true,
		opts = {},
	},
	{
		-- Highlight todo, notes, etc in comments
		'folke/todo-comments.nvim',
		event = 'VimEnter',
		dependencies = { 'nvim-lua/plenary.nvim' },
		opts = { signs = false },
	},
	{
		-- High-performance color highlighter
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end,
	},
}
