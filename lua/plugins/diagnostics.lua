return {
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    keys = {
      {
        "<leader>xx",
        function() require("trouble").open({ mode = "diagnostics" }) end,
        desc = "Diagnostics (All)",
      },
      {
        "<leader>xq",
        function() require("trouble").open({ mode = "quickfix" }) end,
        desc = "Quickfix List",
      },
      {
        "<leader>xl",
        function() require("trouble").open({ mode = "loclist" }) end,
        desc = "Location List",
      },
      {
        "gr",
        function() require("trouble").open({ mode = "lsp_references" }) end,
        desc = "References (Trouble)",
      },
      {
        "<leader>xt",
        "<cmd>TroubleToggle<cr>",
        desc = "Toggle Trouble Panel",
      },
    },
    config = function()
      require("trouble").setup({
        use_diagnostic_signs = true,
        auto_open = false,
        auto_close = false,
        auto_preview = false,
        icons = {
          error = " ",
          warning = " ",
          hint = " ",
          information = " ",
          other = " ",
        },
      })
    end,
  },
}
