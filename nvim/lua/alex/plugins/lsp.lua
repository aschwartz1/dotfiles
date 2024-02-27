-- Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters.
return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup() -- Ensure mason plugin is loaded before the mason-lspconfig plugin
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim", -- Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim
    opts = {
      ensure_installed = {
        "lua_ls",
        "tsserver",
        "ruby_ls",
        "standardrb"
      },
    }
  },
  {
    "neovim/nvim-lspconfig", -- Quickstart configs for Nvim LSP
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.standardrb.setup({})
      lspconfig.ruby_ls.setup({})
      lspconfig.eslint.setup({
        on_attach = function(_, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
      })
    end,
  },
}
