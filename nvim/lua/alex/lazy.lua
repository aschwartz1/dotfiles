-- Bootstrap lazy as the package manager
-- https://github.com/folke/lazy.nvim?tab=readme-ov-file#-installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Add lazy.nvim
-- From the docs, the syntax is: `require("lazy").setup(plugins, opts)`
require("lazy").setup({ { import = "alex.plugins" } }, {
  change_detection = { notify = false }
})
