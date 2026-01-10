return {
	"saghen/blink.cmp",
	dependencies = {
		{
			"edte/blink-go-import.nvim",
			ft = "go",
			config = function()
				require("blink-go-import").setup()
			end,
		},
	},
	opts = {
		sources = {
			default = {
				"lsp",
				"path",
				"buffer",
				"go_pkgs",
			},
			providers = {
				go_pkgs = {
					module = "blink-go-import",
					name = "Import",
				},
			},
		},
	},
}
