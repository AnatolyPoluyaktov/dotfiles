# Структура хоткеев Neovim

## 📁 FILES - `<leader>f`
- `<leader>ff` - Find Files (поиск файлов)
- `<leader>fw` - Save File (сохранить файл)
- `<leader>fm` - Format Buffer (форматировать, LSP)

## 🔍 SEARCH - `<leader>s`
- `<leader>sp` - Find in Project (поиск по проекту)
- `<leader>sb` - Buffer Lines (поиск по строкам буфера)
- `<leader>sm` - Marks (метки)

## 📄 BUFFERS - `<leader>b`
- `<leader>bb` - Show Buffers (показать буферы)

## 🪟 WINDOWS - `<leader>w`
- `<leader>wv` - Split Vertical (вертикальный сплит)
- `<leader>wh` - Split Horizontal (горизонтальный сплит)
- `<leader>wc` - Close Window (закрыть окно)
- `<leader>we` - Equalize Windows (выровнять окна)

## 💻 CODE/LSP - `<leader>c`
- `<leader>ca` - Code Actions (действия кода)
- `<leader>cs` - Symbols (Trouble) (символы)
- `<leader>cl` - LSP Definitions/References (определения/ссылки)

## ♻️ REFACTOR - `<leader>r`
- `<leader>rn` - Rename Symbol (переименовать символ)

## 🔧 DIAGNOSTICS - `<leader>x`
- `<leader>xx` - Toggle Diagnostics (переключить диагностику)
- `<leader>xX` - Buffer Diagnostics (диагностика буфера)
- `<leader>xL` - Location List (список локаций)
- `<leader>xQ` - Quickfix List (список быстрых исправлений)

## 🖥️ TERMINAL - `<leader>t`
- `<leader>tt` - Toggle Terminal (переключить терминал)

## 📋 CLIPBOARD - `<leader>y`
- `<leader>yy` - Copy to System Clipboard (скопировать в системный буфер)
- `<leader>yY` - Copy Line to System Clipboard (скопировать строку в системный буфер)

## 🗑️ DELETE - `<leader>d`
- `<leader>dd` - Delete without Register (удалить без регистра)

## 🚪 QUIT - `<leader>q`
- `<leader>q` - Quit (выйти)

---

## LSP Navigation (без префикса)
- `gd` - Go to Definition
- `gD` - Go to Declaration
- `gi` - Go to Implementation
- `gr` - List References
- `gt` - Go to Type Definition
- `K` - Hover Documentation
- `<C-k>` - Signature Help

## Window Navigation
- `<C-h>` - Left window
- `<C-j>` - Down window
- `<C-k>` - Up window
- `<C-l>` - Right window

## Other
- `jk` - Exit insert mode
- `<Esc>` - Clear search highlight
- `<C-d>` - Scroll down (centered)
- `<C-u>` - Scroll up (centered)
- `n` - Next search (centered)
- `N` - Previous search (centered)

## Visual Mode
- `J` - Move text down
- `K` - Move text up
- `<leader>y` - Copy to system clipboard
- `<leader>d` - Delete without register
