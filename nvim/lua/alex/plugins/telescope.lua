-- Find, Filter, Preview, Pick. All lua, all the time.
return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<C-p>",
        function()
          local builtin = require("telescope.builtin")
          builtin.find_files()
        end,
        desc = "Fuzzy find files by name in the current directory"
      },
      {
        -- Make sure to brew install ripgrep for this!
        "<C-f>",
        function()
          local builtin = require("telescope.builtin")
          builtin.live_grep()
        end,
        desc = "Find search-term within files in the current directory"
      },
    }
  },
  -- It sets vim.ui.select to telescope. That means for example that neovim core stuff can fill the telescope picker. Example would be lua vim.lsp.buf.code_action().
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          mappings = {
            i = {
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- Override <C-q> to send selected, not all, to quickfix list; open the quickfix list
              -- ["<C-h>"] = actions.preview_scrolling_left,                        -- Remap scrolling preview window left
              -- ["<C-l>"] = actions.preview_scrolling_right,                       -- Remap scrolling preview window right
            },
          },
          file_ignore_patterns = {
            "node_modules",
            "%.git",
            "vendor",
            "tmp",
            "%.csv",
            "public/assets",
            "public/downloads",
            "log",
            "yarn.lock"
          },
        },
      })

      -- To get ui-select loaded and working with telescope, you need to call load_extension, somewhere after setup function:
      telescope.load_extension("ui-select")
      telescope.load_extension("fzf")
    end,
  },
  {
    -- A faster, native, implementation of FZF
    "nvim-telescope/telescope-fzf-native.nvim",
    build =
    "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  },
}
