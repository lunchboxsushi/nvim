return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    event = "BufReadPost",
    opts = {
      provider_selector = function(bufnr, filetype, buftype)
        return { "lsp", "indent" }
      end,
      close_fold_kinds_for_ft = { "imports", "comment" },
    },
    config = function(_, opts)
      require("ufo").setup(opts)

      -- optional: preview fold with K
      vim.keymap.set("n", "zK", function()
        require("ufo").peekFoldedLinesUnderCursor()
      end, { desc = "Peek Fold", silent = true })
    end,
  },
}
