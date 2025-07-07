return {
  -- Autopairs: auto-close (), {}, "", etc.
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup()
    end,
  },

  -- Comment toggling with `gcc`, `gbc`, `gc` in visual
  {
    "numToStr/Comment.nvim",
    keys = {
      { "gcc", mode = "n", desc = "Toggle comment line" },
      { "gc", mode = { "n", "v" }, desc = "Toggle comment block" },
    },
    config = function()
      require("Comment").setup()
    end,
  },
}
