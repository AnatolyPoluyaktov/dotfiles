return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	opts = {
		preset = "modern",
		delay = function(ctx)
			return ctx.plugin and 0 or 300
		end,
		icons = {
			breadcrumb = "»",
			separator = "➜",
			group = "+",
			mappings = true,
			colors = true,
		},
		sort = { "local", "order", "group", "alphanum", "mod" },
		expand = 1,
		plugins = {
			marks = true,
			registers = true,
			spelling = {
				enabled = true,
				suggestions = 20,
			},
			presets = {
				operators = true,
				motions = true,
				text_objects = true,
				windows = true,
				nav = true,
				z = true,
				g = true,
			},
		},
		spec = {
			-- ============================================
			-- FILES GROUP - <leader>f
			-- ============================================
			{
				"<leader>f",
				group = "Files",
				icon = "󰈔",
			},
			{
				"<leader>ff",
				desc = "Find Files",
				icon = "󰈞",
			},
			-- <leader>fm (Format) регистрируется динамически в lsp.lua

			-- ============================================
			-- SEARCH GROUP - <leader>s
			-- ============================================
			{
				"<leader>s",
				group = "Search",
				icon = "",
			},
			{
				"<leader>sb",
				desc = "Buffer Lines",
				icon = "",
			},
			{
				"<leader>sp",
				desc = "Find in Project",
				icon = "󰺮",
			},

			-- ============================================
			-- BUFFER GROUP - <leader>b
			-- ============================================
			{
				"<leader>b",
				group = "Buffers",
				icon = "󰈙",
			},
			{
				"<leader>bb",
				desc = "Show Buffers",
				icon = "󰈙",
			},

			-- ============================================
			-- WINDOW GROUP - <leader>w
			-- ============================================
			{
				"<leader>w",
				group = "Windows",
				icon = "󱂬",
			},
			{
				"<leader>wv",
				desc = "Split Vertical",
				icon = "󰤼",
			},
			{
				"<leader>wh",
				desc = "Split Horizontal",
				icon = "󰤻",
			},
			{
				"<leader>wc",
				desc = "Close Window",
				icon = "󰅖",
			},
			{
				"<leader>we",
				desc = "Equalize Windows",
				icon = "󰉨",
			},

			-- ============================================
			-- CODE/LSP GROUP - <leader>c
			-- ============================================
			-- Регистрируется динамически в lua/core/lsp.lua при LspAttach
			-- <leader>ca - Code Actions
			-- <leader>cs - Symbols (Trouble)
			-- <leader>cl - LSP Definitions/References

			-- ============================================
			-- REFACTOR GROUP - <leader>r
			-- ============================================
			-- Регистрируется динамически в lua/core/lsp.lua при LspAttach
			-- <leader>rn - Rename Symbol

			-- ============================================
			-- DIAGNOSTICS GROUP - <leader>x
			-- ============================================
			{
				"<leader>x",
				group = "Diagnostics",
				icon = "󱖫",
			},
			{
				"<leader>xx",
				desc = "Toggle Diagnostics",
				icon = "󰔫",
			},
			{
				"<leader>xX",
				desc = "Buffer Diagnostics",
				icon = "󰕷",
			},
			{
				"<leader>xL",
				desc = "Location List",
				icon = "󰂖",
			},
			{
				"<leader>xQ",
				desc = "Quickfix List",
				icon = "󰁨",
			},

			-- ============================================
			-- TERMINAL GROUP - <leader>t
			-- ============================================
			{
				"<leader>t",
				group = "Terminal",
				icon = "",
			},
			{
				"<leader>tt",
				desc = "Toggle Terminal",
				icon = "",
			},

			-- ============================================
			-- CLIPBOARD GROUP - <leader>y
			-- ============================================
			{
				"<leader>y",
				group = "Clipboard",
				icon = "󰆏",
			},
			{
				"<leader>yy",
				desc = "Copy to System Clipboard",
				icon = "󰆏",
			},
			{
				"<leader>yY",
				desc = "Copy Line to System Clipboard",
				icon = "󰆏",
			},

			-- ============================================
			-- DELETE GROUP - <leader>d
			-- ============================================
			{
				"<leader>d",
				group = "Delete",
				icon = "󰆴",
			},
			{
				"<leader>dd",
				desc = "Delete without Register",
				icon = "󰆴",
			},

			-- ============================================
			-- QUIT - <leader>q
			-- ============================================
			{
				"<leader>q",
				desc = "Quit",
				icon = "󰗼",
			},

			-- ============================================
			-- VISUAL MODE MAPPINGS
			-- ============================================
			{
				mode = "v",
				{
					"<leader>y",
					desc = "Copy to System Clipboard",
					icon = "󰆏",
				},
				{
					"<leader>d",
					desc = "Delete without Register",
					icon = "󰆴",
				},
				{
					"J",
					desc = "Move Text Down",
					icon = "",
				},
				{
					"K",
					desc = "Move Text Up",
					icon = "",
				},
			},

			-- ============================================
			-- LSP NAVIGATION (без префикса)
			-- ============================================
			-- gd, gD, gi, gr, gt, K регистрируются динамически в lua/core/lsp.lua

			-- ============================================
			-- TREESITTER - <leader>v (Visual/selection)
			-- ============================================
			{
				"<leader>v",
				group = "Select",
				icon = "󰒅",
			},
			{
				"<leader>vv",
				desc = "Init Selection",
				icon = "󰒅",
			},

			-- ============================================
			-- TREESITTER - <leader>a (Arguments/params)
			-- ============================================
			{
				"<leader>a",
				desc = "Swap Parameter Next",
				icon = "󰚑",
			},
			{
				"<leader>A",
				desc = "Swap Parameter Previous",
				icon = "󰚑",
			},

			-- ============================================
			-- TREESITTER NAVIGATION - [ and ]
			-- ============================================
			{
				"[f",
				desc = "Previous Function",
				icon = "󰊕",
			},
			{
				"]f",
				desc = "Next Function",
				icon = "󰊕",
			},
			{
				"[c",
				desc = "Previous Class",
				icon = "󰠱",
			},
			{
				"]c",
				desc = "Next Class",
				icon = "󰠱",
			},
			{
				"[p",
				desc = "Previous Parameter",
				icon = "󰏪",
			},
			{
				"]p",
				desc = "Next Parameter",
				icon = "󰏪",
			},

			-- ============================================
			-- TREESITTER TEXT OBJECTS (visual/operator mode)
			-- ============================================
			{
				mode = { "v", "o" },
				{ "+", desc = "Increment Selection", icon = "" },
				{ "_", desc = "Decrement Selection", icon = "" },
				{ "af", desc = "Around Function", icon = "󰊕" },
				{ "if", desc = "Inner Function", icon = "󰊕" },
				{ "ac", desc = "Around Class", icon = "󰠱" },
				{ "ic", desc = "Inner Class", icon = "󰠱" },
				{ "ai", desc = "Around If", icon = "󰇉" },
				{ "ii", desc = "Inner If", icon = "󰇉" },
				{ "al", desc = "Around Loop", icon = "󰑖" },
				{ "il", desc = "Inner Loop", icon = "󰑖" },
				{ "ap", desc = "Around Parameter", icon = "󰏪" },
				{ "ip", desc = "Inner Parameter", icon = "󰏪" },
			},
		},
	},
}
