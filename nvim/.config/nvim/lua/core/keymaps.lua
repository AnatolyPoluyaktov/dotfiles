-- Установка опции для сокращения записи
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Лидер клавиша
vim.g.mapleader = " "
vim.g.maplocalleader = "\\" -- Локальный лидер (можно тоже пробел или запятую)
-- Сохранить файл
map("n", "<leader>w", ":w<CR>", opts)

-- Быстрый выход из режима вставки
map("i", "jk", "<Esc>", opts)

-- Очистка поиска
map("n", "<Esc>", ":nohlsearch<CR>", opts)

-- Быстрое сохранение и выход
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)


-- Передвижение текста (выделенного) вверх/вниз
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Копировать в системный буфер обмена
map("v", "<leader>y", '"+y', opts)
map("n", "<leader>y", '"+y', opts)
map("n", "<leader>Y", '"+Y', opts)

-- Удалить без записи в регистр
map("n", "<leader>d", '"_d', opts)
map("v", "<leader>d", '"_d', opts)

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

-- Горизонтальное и вертикальное разделение
map("n", "<leader>sv", ":vsplit<CR>", opts) -- Вертикально
map("n", "<leader>sh", ":split<CR>", opts)  -- Горизонтально

-- Закрыть текущее окно
map("n", "<leader>sc", "<C-w>c", opts)

-- Сделать окна равными по размеру
map("n", "<leader>se", "<C-w>=", opts)
