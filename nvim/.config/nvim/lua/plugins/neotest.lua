return {
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-neotest/neotest-go",
			"mfussenegger/nvim-dap",
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-go")({ experimental = { test_table = true }, args = { "-count=1" } }),
				},
			})
			vim.keymap.set("n", "<leader>tn", function() require("neotest").run.run() end, { desc = "Nearest test" })
			vim.keymap.set("n", "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end,
				{ desc = "File tests" })
			vim.keymap.set("n", "<leader>ts", function() require("neotest").summary.toggle() end,
				{ desc = "Test summary" })
			vim.keymap.set("n", "<leader>td", function() require("neotest").run.run({ strategy = "dap" }) end,
				{ desc = "Nearest in DAP" })
		end,
	},
}
