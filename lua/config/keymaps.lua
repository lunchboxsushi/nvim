local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Remove space functionality in normal
vim.keymap.set("n", "<Space>", "<Nop>", { noremap = true, silent = true })

-- Core
map("n", "<leader>w", "<cmd>w<CR>", opts)
map("n", "<leader>q", "<cmd>q<CR>", opts)
map("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Window navigation
-- map("n", "<C-h>", "<C-w>h", opts)
-- map("n", "<C-j>", "<C-w>j", opts)
-- map("n", "<C-k>", "<C-w>k", opts)
-- map("n", "<C-l>", "<C-w>l", opts)

-- Split window
map("n", "<leader>sv", "<C-w>v", opts) -- vertical split
map("n", "<leader>sh", "<C-w>s", opts) -- horizontal split
map("n", "<leader>se", "<C-w>=", opts) -- equal size
map("n", "<leader>sx", "<cmd>close<CR>", opts) -- close split
