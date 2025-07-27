return {
  {
    "renerocksai/telekasten.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      local home = vim.fn.expand("~/notes/root")

      require("telekasten").setup({
        home = home,
        take_over_my_home = true,
        auto_set_filetype = false,
        dailies = home .. "~/notes/daily",
        templates = home .. "~/notes/templates",
        extension = ".md",
      })

      -- Optional: create folders if they don't exist
      vim.fn.mkdir(home .. "~/notes/daily", "p")
      vim.fn.mkdir(home .. "~/notes/templates", "p")
    end,
  },
}
