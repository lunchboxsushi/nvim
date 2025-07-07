return {
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      {
        "<leader>re",
        function()
          require("refactoring").refactor("Extract Function")
        end,
        mode = "v",
        desc = "Extract Function",
      },
      {
        "<leader>rv",
        function()
          require("refactoring").refactor("Extract Variable")
        end,
        mode = "v",
        desc = "Extract Variable",
      },
      {
        "<leader>ri",
        function()
          require("refactoring").refactor("Inline Variable")
        end,
        mode = "n",
        desc = "Inline Variable",
      },
      {
        "<leader>rp",
        function()
          require("refactoring").debug.print_var()
        end,
        mode = "n",
        desc = "Print Debug Value",
      },
      {
        "<leader>rP",
        function()
          require("refactoring").debug.printf()
        end,
        mode = "n",
        desc = "Print Debug printf",
      },
    },
    config = function()
      require("refactoring").setup({})
    end,
  },
}
