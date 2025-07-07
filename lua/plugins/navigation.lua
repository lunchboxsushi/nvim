return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false, -- must load early
  },
  {
    "swaits/lazyjj.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      mapping = "<leader>jj", -- open jj UI
    },
  }
}
