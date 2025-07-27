return {
  -- LSP config
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- Mason setup
      require("mason").setup()

      -- Mason LSP bridge
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "gopls" }, -- change these per language
        automatic_installation = false,
        automatic_enable = false,  -- add this to stop auto-enable logic
      })

      -- Setup each server
      local lspconfig = require("lspconfig")
      local capabilities = vim.lsp.protocol.make_client_capabilities()

      -- Lua
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
          },
        },
      })

      -- Go
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })

      -- Add more LSPs below as needed
    end,
  },
}
