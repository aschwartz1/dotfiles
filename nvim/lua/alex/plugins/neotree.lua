-- Neovim plugin to manage the file system and other tree like structures.
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",       -- 3rd party "standard library" functions
    "nvim-tree/nvim-web-devicons", -- for fancy icons :)
    "MunifTanjim/nui.nvim",        -- ui component library for neovim
    "s1n7ax/nvim-window-picker",   -- This plugins prompts the user to pick a window and returns the window id of the picked window
  },
  keys = {
    {
      "<Leader>f",
      "<cmd>Neotree reveal<CR>",
      desc = "Reveal the current file in the filesystem tree"
    },
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        window = {
          mappings = {
            -- disable fuzzy finder
            -- https://github.com/nvim-neo-tree/neo-tree.nvim/issues/791
            ["/"] = "noop",
            ["a"] = {
              "add",
              config = {
                show_path = "relative" -- "none", "relative", "absolute"
              }
            },
            ["A"] = {
              "add_directory",
              config = {
                show_path = "relative" -- "none", "relative", "absolute"
              }
            },
            ["c"] = {
              "copy",
              config = {
                show_path = "absolute" -- "none", "relative", "absolute"
              }
            },
            ["m"] = {
              "move",
              config = {
                show_path = "absolute" -- "none", "relative", "absolute"
              }
            },
          },
        },
      },
      event_handlers = {
        {
          -- Auto close NeoTree when selecting (opening) a file
          event = "file_opened",
          handler = function() -- file_path is the argument
            require("neo-tree").close_all()
          end,
        },
      },
    })
  end,
}
