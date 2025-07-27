local map = vim.keymap.set
local opts = { noremap = true, silent = true }


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

-- Setup notes telekasten
map("n", "<leader>oi", "<cmd>e ~/notes/root/index.md<CR>", opts)
map("n", "<leader>on", "<cmd>lua require('telekasten').new_note()<CR>", opts)
map("n", "<leader>od", "<cmd>lua require('telekasten').find_daily_notes()<CR>", opts)
map("n", "<leader>oj", "<cmd>lua require('telekasten').goto_today()<CR>", opts)
map("n", "<leader>oo", "<cmd>lua require('telekasten').find_notes()<CR>", opts)
map("n", "<leader>ol", "<cmd>lua require('telekasten').follow_link()<CR>", opts)
map("n", "<leader>ot", "<cmd>lua require('telekasten').toggle_todo()<CR>", opts)

-- Chatgpt AI
map("n", "<leader>aa", function() require("gp").chat() end, opts)
map("v", "<leader>ae", function()
  require("gp").popup("explain_code",
    { prompt = "Explain this code in clear, senior-level engineering terms." })
end, opts)


-- JJ Viewer
-- map("v", "<leader>jg", "<cmd>lua require('jjviewer').open_selected_code_on_default_branch()<CR>'", {
--   desc = "Open selected code on default remote branch"
-- })
--

-- Markdown Preview (markview.nvim)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    local map = vim.keymap.set
    local opts = { buffer = true, noremap = true, silent = true }

    map("n", "<leader>mp", "<cmd>MarkViewToggle<cr>", vim.tbl_extend("force", opts, { desc = "Toggle Markdown Preview" }))
    map("n", "<leader>mo", "<cmd>MarkViewOpen<cr>", vim.tbl_extend("force", opts, { desc = "Open Markdown Preview" }))
    map("n", "<leader>mc", "<cmd>MarkViewClose<cr>", vim.tbl_extend("force", opts, { desc = "Close Markdown Preview" }))
  end,
})

-- Fold commands using <leader>f as base
map("n", "<leader>fo", "zo", { desc = "Open Fold" })
map("n", "<leader>fc", "zc", { desc = "Close Fold" })
map("n", "<leader>fO", "zR", { desc = "Open All Folds" })
map("n", "<leader>fC", "zM", { desc = "Close All Folds" })
map("n", "<leader>fp", function()
  require("ufo").peekFoldedLinesUnderCursor()
end, { desc = "Peek Fold Under Cursor" })

-- Remove space functionality in normal (KEEP AT BOTTOM)
vim.keymap.set("n", "<Space>", "<Nop>", { noremap = true, silent = true })
