-- Установка опции для сокращения записи
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Лидер клавиша
vim.g.mapleader = " "
vim.g.maplocalleader = "\\" -- Локальный лидер

-- Быстрый выход из режима вставки
map("i", "jk", "<Esc>", opts)

-- Очистка поиска
map("n", "<Esc>", ":nohlsearch<CR>", opts)

-- ============================================
-- FILES - <leader>f
-- ============================================
map("n", "<leader>fw", ":w<CR>", { noremap = true, silent = true, desc = "Save File" })

-- ============================================
-- QUIT - <leader>q
-- ============================================
map("n", "<leader>q", ":q<CR>", { noremap = true, silent = true, desc = "Quit" })

-- ============================================
-- CLIPBOARD - <leader>y
-- ============================================
map("v", "<leader>y", '"+y', { noremap = true, silent = true, desc = "Copy to System Clipboard" })
map("n", "<leader>yy", '"+y', { noremap = true, silent = true, desc = "Copy to System Clipboard" })
map("n", "<leader>yY", '"+Y', { noremap = true, silent = true, desc = "Copy Line to System Clipboard" })

-- ============================================
-- DELETE - <leader>d
-- ============================================
map("n", "<leader>dd", '"_d', { noremap = true, silent = true, desc = "Delete without Register" })
map("v", "<leader>d", '"_d', { noremap = true, silent = true, desc = "Delete without Register" })

-- ============================================
-- VISUAL MODE - move text
-- ============================================
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Центрирование при прокрутке
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- Центрирование при прокрутке
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- Центрирование при поиске
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)


-- Навигация по окнам (сплитам)
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- ============================================
-- WINDOWS - <leader>w
-- ============================================
map("n", "<leader>wv", ":vsplit<CR>", { noremap = true, silent = true, desc = "Split Vertical" })
map("n", "<leader>wh", ":split<CR>", { noremap = true, silent = true, desc = "Split Horizontal" })
map("n", "<leader>wc", "<C-w>c", { noremap = true, silent = true, desc = "Close Window" })
map("n", "<leader>we", "<C-w>=", { noremap = true, silent = true, desc = "Equalize Windows" })

