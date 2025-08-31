return {
	{
		"stevearc/aerial.nvim",
		opts = {
			backends = { "treesitter", "lsp" },
			layout = { default_direction = "prefer_right" },
		},
		keys = {
			{ "<leader>o", "<cmd>AerialToggle!<cr>", desc = "Symbols Outline" },
		},
	},
}
