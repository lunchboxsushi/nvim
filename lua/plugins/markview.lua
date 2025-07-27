return {
  {
    "OXY2DEV/markview.nvim",
    ft = "markdown",
    opts = {},
    config = function(_, opts)
      require("markview").setup(opts)
    end,
  },
}
