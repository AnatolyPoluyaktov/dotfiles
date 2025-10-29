-- Включает отображение номеров строк в левой части окна
vim.wo.number = true
-- Включает относительные номера строк
vim.wo.relativenumber = true
-- Включает поддержку мыши во всех режимах
vim.opt.mouse = "a"
-- Фокус на окно по наведению мыши, без клика.
vim.opt.mousefocus = true
-- Использовать системный буфер обмена как основной
vim.opt.clipboard = "unnamedplus"
--  Количество пробелов при сдвиге
vim.opt.shiftwidth = 4
-- Ширина табуляции
vim.opt.tabstop = 4
-- Кол-во пробелов при нажатии Tab и Backspace в insert-режиме
vim.opt.softtabstop = 4
-- Минимум 8 строк от края экрана при прокрутке.
vim.opt.scrolloff = 8
--  Отключает перенос строк
vim.opt.wrap = false
-- Включает поддержку 24-битных (truecolor) цветов в терминале
vim.opt.termguicolors = true
-- Включаем синтаксическую подсветку (на случай если отключена)
vim.cmd("syntax enable")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- fillchars
vim.opt.fillchars = {
	vert = "│", -- вертикальный разделитель окон
	fold = " ", -- пустой символ для свернутых блоков
	eob = " ", -- убирает символ ~ в конце буфера
	msgsep = "‾", -- линия разделения команд/сообщений
	foldopen = "", -- иконка раскрытого блока (можно заменить на ▼)
	foldsep = "│", -- разделитель между блоками
	foldclose = "", -- иконка закрытого блока (можно заменить на ▶)
}
