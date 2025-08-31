return {
	{
		"mason-org/mason.nvim",
		config = function()
			require('mason').setup({})
		end,

	},
	{
		'mason-org/mason.nvim',
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	},
	{
		'mason-org/mason-lspconfig.nvim',
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "rust_analyzer", "gopls" },
			})

			-- Автоматическая настройка всех указанных серверов
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			})
		end,
	}
}
