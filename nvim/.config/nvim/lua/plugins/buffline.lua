return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers", -- показывать открытые буферы
				numbers = "none", -- можно "ordinal" или "buffer_id"
				diagnostics = "nvim_lsp", -- иконки диагностики от LSP
				show_buffer_close_icons = false,
				show_close_icon = false,
				separator_style = "slant", -- варианты: "slant", "thick", "thin"
				always_show_bufferline = true,
				color_icons = true,
			},
		})
		vim.g.mapleader = " "
		vim.g.maplocalleader = " "
		-- 🔑 Горячие клавиши для переключения буферов
		vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
		vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
		vim.keymap.set("n", "<leader>bd", "<Cmd>bdelete<CR>", { desc = "Close buffer" })
	end,
}
