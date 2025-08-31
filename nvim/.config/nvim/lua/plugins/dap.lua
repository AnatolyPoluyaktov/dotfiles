return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"leoluz/nvim-dap-go",
			{
				"rcarriga/nvim-dap-ui",
				dependencies = {
					"nvim-neotest/nvim-nio", -- 🔧 обязательная новая зависимость
				},
			},
		},
		config = function()
			require("dap-go").setup()
			require("dapui").setup()
			local dap, dapui = require("dap"), require("dapui")

			dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
			dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
			dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end

			vim.keymap.set("n", "<F5>", function() dap.continue() end, { desc = "DAP Continue" })
			vim.keymap.set("n", "<F10>", function() dap.step_over() end, { desc = "DAP Step Over" })
			vim.keymap.set("n", "<F11>", function() dap.step_into() end, { desc = "DAP Step Into" })
			vim.keymap.set("n", "<F12>", function() dap.step_out() end, { desc = "DAP Step Out" })
			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "DAP Toggle Breakpoint" })
			vim.keymap.set("n", "<leader>dtn", function() require("dap-go").debug_test() end,
				{ desc = "Debug nearest Go test" })
			vim.keymap.set("n", "<leader>dtl", function() require("dap-go").debug_last() end,
				{ desc = "Debug last Go test" })
		end,
	},
}
