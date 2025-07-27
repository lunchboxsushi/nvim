-- UI
vim.opt.number = true         -- Line numbers
-- vim.opt.relativenumber = true -- Relative line numbers
vim.opt.cursorline = true     -- Highlight current line
vim.opt.termguicolors = true  -- Enable 24-bit color

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- folds
vim.o.foldenable = false         -- don't fold on file open
vim.o.foldlevel = 99            -- allow all folds to be shown
vim.o.foldlevelstart = 99       -- start with them unfolded
vim.o.foldcolumn = "1"          -- optional: shows fold indicators (1 column wide)

-- Behavior
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Mouse
vim.opt.mouse = "a"

-- Undo
vim.opt.undofile = true

-- Disable swap, backup, and writebackup files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = false

-- Bell
vim.opt.belloff = "all"
vim.opt.visualbell = false
