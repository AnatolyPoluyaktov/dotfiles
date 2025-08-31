return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({
			-- ✅ ПОМЕТКИ ОШИБОК/ВАРНОВ В ДЕРЕВЕ (файлы И папки)
			diagnostics = {
				enable = true,
				show_on_dirs = true,                       -- помечать директории, если внутри есть проблемы
				show_on_open_dirs = true,                  -- и открытые папки тоже
				debounce_delay = 100,
				severity = { min = vim.diagnostic.severity.HINT }, -- можно повысить до WARN/ERROR
				icons = { hint = "", info = "", warning = "", error = "" },
			},

			-- окно дерева
			view = {
				side = "left",
				width = 36,
				preserve_window_proportions = true,
			},

			-- поведение при открытии файла
			actions = {
				open_file = {
					quit_on_open = true,
					resize_window = true,
				},
			},

			-- навигация/фокус
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			sync_root_with_cwd = true,
			respect_buf_cwd = true,

			renderer = {
				full_name = false,
				group_empty = true,
				highlight_opened_files = "name",
				-- (необязательно) показывать значки git, если используешь git в проекте
				icons = {
					show = { git = true, folder = true, file = true, folder_arrow = true },
				},
			},

			hijack_netrw = true,
			disable_netrw = true,
		})

		-- Клавиши
		local api = require("nvim-tree.api")
		vim.keymap.set("n", "<leader>e", api.tree.toggle, { desc = "NvimTree Toggle" })
		vim.keymap.set("n", "<C-b>", api.tree.focus, { desc = "NvimTree Focus" })
		vim.keymap.set("n", "<leader>o", function() api.tree.open({ find_file = true, focus = true }) end,
			{ desc = "NvimTree Find current file" })
		vim.keymap.set("n", "<A-,>", function() vim.cmd("vertical resize -5") end,
			{ desc = "Thinner tree", silent = true })
		vim.keymap.set("n", "<A-.>", function() vim.cmd("vertical resize +5") end,
			{ desc = "Wider tree", silent = true })
	end,
}
