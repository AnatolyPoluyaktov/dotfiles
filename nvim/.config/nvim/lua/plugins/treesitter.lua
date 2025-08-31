return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = { "go", "gomod", "gowork", "gosum", "lua", "json", "yaml", "regex" },
		},
	},
}
