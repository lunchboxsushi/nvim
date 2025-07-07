local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Remove space functionality in normal
vim.keymap.set("n", "<Space>", "<Nop>", { noremap = true, silent = true })

-- Core
map("n", "<leader>w", "<cmd>w<CR>", opts)
map("n", "<leader>q", "<cmd>q<CR>", opts)
map("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Split window
map("n", "<leader>sv", "<C-w>v", opts)         -- vertical split
map("n", "<leader>sh", "<C-w>s", opts)         -- horizontal split
map("n", "<leader>se", "<C-w>=", opts)         -- equal size
map("n", "<leader>sx", "<cmd>close<CR>", opts) -- close split

-- LSP core
map("n", "K", vim.lsp.buf.hover, opts)
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "gD", vim.lsp.buf.declaration, opts)
map("n", "gi", vim.lsp.buf.implementation, opts)
map("n", "gr", vim.lsp.buf.references, opts)
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

-- Diagnostics
map("n", "gl", vim.diagnostic.open_float, opts)
map("n", "[d", vim.diagnostic.goto_prev, opts)
map("n", "]d", vim.diagnostic.goto_next, opts)

-- Formatting
map("n", "<leader>lf", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format Document" })
