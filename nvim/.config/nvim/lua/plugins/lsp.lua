return {
	{
		'neovim/nvim-lspconfig',
		config = function()
			local lspconfig = require('lspconfig')

			-- Настройка LSP для Lua и Go
			require('lspconfig').lua_ls.setup({

				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" }, -- чтобы убрать "Undefined global `vim`"
						},
					},
				},
			})

			lspconfig.gopls.setup({
				capabilities = capabilities,
				on_attach = on_attach,
				settings = {
					gopls = {
						usePlaceholders = true,
						staticcheck = true,
						analyses = { unusedparams = true, unreachable = true },
					},
				},
			})

			-- Автокоманда при подключении LSP
			vim.api.nvim_create_autocmd('LspAttach', {
				group = vim.api.nvim_create_augroup('UserLspConfig', {}),
				callback = function(ev)
					vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

					local opts = { buffer = ev.buf }

					-- Клавиши для LSP
					vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
					vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
					vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
					vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = true })
					vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
					vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
					vim.keymap.set('n', '<Leader>lr', vim.lsp.buf.rename, opts)
					vim.keymap.set('n', '<Leader>la', vim.lsp.buf.code_action, opts)
					vim.keymap.set('n', '<Leader>lf', function()
						vim.lsp.buf.format { async = true }
					end, opts)
				end,
			})
		end
	}
}
