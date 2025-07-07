
return {
  -- Fast fuzzy motion across the visible screen
  {
    "ggandor/leap.nvim",
    keys = {
      { "s", mode = { "n", "x", "o" }, desc = "Leap forward to target" },
      { "S", mode = { "n", "x", "o" }, desc = "Leap backward to target" },
    },
    config = function()
      require("leap").add_default_mappings()
    end,
  },
}
