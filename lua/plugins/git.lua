return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "│" },
          change = { text = "│" },
          delete = { text = "_" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
        },
        current_line_blame = true,
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns
          local map = vim.keymap.set
          local opts = { buffer = bufnr, noremap = true, silent = true }

          map("n", "<leader>gb", gs.blame_line, vim.tbl_extend("force", opts, { desc = "Git Blame Line" }))
          map("n", "<leader>gp", gs.preview_hunk, vim.tbl_extend("force", opts, { desc = "Preview Git Hunk" }))
          map("n", "<leader>gu", gs.undo_stage_hunk, vim.tbl_extend("force", opts, { desc = "Undo Git Hunk" }))
        end,
      })
    end,
  },
}
