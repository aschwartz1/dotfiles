-- 🍨 Soothing pastel theme for (Neo)vim
return {
  "catppuccin/nvim",
  lazy = false,        -- make sure we load this during startup if it is your main colorscheme
  name = "catppuccin", -- rename, otherwise this will show as `nvim` in Lazy's plugin list
  priority = 1000,     -- make sure to load this before all the other start plugins
  config = function()
    local catppuccin = require("catppuccin")

    catppuccin.setup({
      no_italic = true -- Disable italics. NOTE: neotree is still showing italics
    })

    vim.cmd([[colorscheme catppuccin-mocha]])
  end,
}
