local cmd = vim.cmd
local keymap = vim.keymap

-- Initialize the global variable for the theme mode if it's not set
if vim.g.current_theme_mode == nil then
  vim.g.current_theme_mode = "dark"
end

-- Function to toggle between light and dark themes
local function toggle_theme()
  if vim.g.current_theme_mode == "dark" then
    -- Switch to light theme
    vim.cmd("colorscheme catppuccin-latte")
    vim.g.current_theme_mode = "light"
  else
    -- Switch to dark theme
    vim.cmd("colorscheme catppuccin-mocha")
    vim.g.current_theme_mode = "dark"
  end
end

-- Command to toggle the theme
vim.api.nvim_create_user_command("ToggleTheme", toggle_theme, {})
