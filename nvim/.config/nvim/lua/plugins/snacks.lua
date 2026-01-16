return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		bigfile = { enabled = true },
		dashboard = { enabled = false },
		explorer = { enabled = false },
		indent = { enabled = false },
		input = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = false },
		quickfile = { enabled = false },
		scope = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = false },
		words = { enabled = false },
		rename = { enabled = true },
		scratch = { enabled = true },
		git = {
			enabled = false,
		},
		lazygit = { enabled = true },
		terminal = { enabled = true },
	},
	keys = {
		-- ============================================
		-- BUFFERS - <leader>b
		-- ============================================
		{
			"<leader>bb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Show Buffers",
		},

		-- ============================================
		-- FILES - <leader>f
		-- ============================================
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},

		-- ============================================
		-- SEARCH - <leader>s
		-- ============================================
		{
			"<leader>sp",
			function()
				Snacks.picker.grep()
			end,
			desc = "Find in Project",
		},
		{
			"<leader>sb",
			function()
				Snacks.picker.lines()
			end,
			desc = "Buffer Lines",
		},
		{
			"<leader>sm",
			function()
				Snacks.picker.marks()
			end,
			desc = "Marks",
		},

		-- ============================================
		-- TERMINAL - <leader>t
		-- ============================================
		{
			"<leader>tt",
			function()
				Snacks.terminal.toggle()
			end,
			desc = "Toggle Terminal",
		},
	},
}
