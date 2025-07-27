
-- In your plugins/ai.lua
return {
  {
    "robitx/gp.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      openai_model_id = "gpt-3.5-turbo",
      popup_layout = { position = "right", size = 80 },
      popup_input = { submit = "<C-Enter>", yank_register = "+" },

      providers = {
        openai = {
          endpoint = "https://api.openai.com/v1/chat/completions",
          secret = os.getenv("OPENAI_API_KEY"),
        },
        -- You can also use: copilot, pplx, ollama, anthropic, googleai :contentReference[oaicite:2]{index=2}
      },
    },
    config = function(_, opts)
      require("gp").setup(opts)
    end,
  },
}
