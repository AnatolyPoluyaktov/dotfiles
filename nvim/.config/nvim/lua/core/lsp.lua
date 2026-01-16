-- Mason PATH is handled by core.mason-path
vim.lsp.enable({
    "lua-ls",
    "gopls",
    "ts-ls",
    "html-ls",
    "css-ls",
    "pyright"

})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, {
        buffer = bufnr,
        silent = true,
        desc = desc,
      })
    end

    -- 📍 навигация
    map("n", "gd", vim.lsp.buf.definition, "Go to definition")
    map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
    map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
    map("n", "gr", vim.lsp.buf.references, "List references")
    map("n", "gt", vim.lsp.buf.type_definition, "Go to type definition")

    -- 📖 информация
    map("n", "K", vim.lsp.buf.hover, "Hover documentation")
    map("n", "<C-k>", vim.lsp.buf.signature_help, "Signature help")

    -- ✏️ рефакторинг
    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
    map("n", "<leader>ca", vim.lsp.buf.code_action, "Code actions")

  

    -- 🧹 форматирование (если сервер поддерживает)
    map("n", "<leader>fm", function()
      vim.lsp.buf.format({ async = true })
    end, "Format buffer")
  end,
})
