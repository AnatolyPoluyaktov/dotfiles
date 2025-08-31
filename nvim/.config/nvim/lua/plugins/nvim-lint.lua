return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")

    -- Подключаем встроенный golangci-lint
    lint.linters_by_ft = {
      go = { "golangcilint" },
    }

    -- Автоматический запуск при сохранении / входе в буфер / выходе из insert
    local aug = vim.api.nvim_create_augroup("GoLint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
      group = aug,
      callback = function()
        if lint.linters_by_ft[vim.bo.filetype] then
          lint.try_lint()
        end
      end,
    })
  end,
}

