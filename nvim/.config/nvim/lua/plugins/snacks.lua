return {
  "folke/snacks.nvim",
  event = "VeryLazy", -- ленивый запуск
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- 🎨 иконки для файлов
  },
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = false },
    explorer = {
      enabled = true,
      icons = true, -- 🎨 включаем иконки
      diagnostics = true, -- 💡 включаем LSP диагностику
      git = true, -- 🔧 если хочешь, можно убрать (false)
      -- можно тонко настроить стиль
      symbols = {
        diagnostics = {
          error = " ", -- nf-fa-times_circle
          warn = " ",  -- nf-fa-warning
          hint = " ",  -- nf-fa-lightbulb_o
          info = " ",  -- nf-fa-info_circle
        },
      },
    },
    indent = { enabled = false },
    input = { enabled = true },
    notifier = { enabled = false },
    picker = {
      enabled = true,
      sources = { files = { hidden = true } },
    },
    quickfile = { enabled = true },
    scope = { enabled = false },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
  },
  keys = {
    -- 📁 File Explorer
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "File Explorer",
    },

    -- 🔍 Picker
    {
      "<leader>ff",
      function()
        Snacks.picker.files()
      end,
      desc = "Find Files",
    },
    {
      "<leader>/",
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep",
    },

    -- 🗒️ Scratch Buffer
    {
      "<leader>.",
      function()
        Snacks.scratch()
      end,
      desc = "Toggle Scratch Buffer",
    },

    -- 💻 Terminal
    {
      "<C-/>",
      function()
        Snacks.terminal()
      end,
      desc = "Toggle Terminal",
    },
    {
      "<C-_>",
      function()
        Snacks.terminal()
      end,
      desc = "which_key_ignore",
    },

    -- 🧑‍💻 Lazygit
    {
      "<leader>gg",
      function()
        Snacks.lazygit()
      end,
      desc = "Lazygit",
    },
  },
}

