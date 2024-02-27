-- Define a global variable to hold whether or not we want to format on save
vim.g.format_on_save = 1

-- Lightweight yet powerful formatter plugin for Neovim
-- Info source: https://youtu.be/ybUE4D80XSk
return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        -- disabling, for now - waiting on: https://github.com/nebulab/erb-formatter/issues/47
        -- eruby = { "erb_formatter" },
        html = { "prettier" },
      },
      format_on_save = function()
        return {
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
          dry_run = vim.g.format_on_save == 0,
        }
      end,
      formatters = {
        erb_formatter = {
          command = "erb-format",
          args = { "--stdin" },
        }
      }
    })
  end,
}
