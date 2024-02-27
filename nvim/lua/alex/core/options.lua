local opt = vim.opt

-- File-related
-- https://neovim.io/doc/user/options.html#'autowrite'
opt.autowrite = true -- Write the current contents of the file on context switch
opt.swapfile = false -- Disable swap file (carryover from @thewatts)

-- Line numbers
opt.number = true         -- Turn on line numbers
opt.relativenumber = true -- Make line numbers releative to the cursor

-- Tabs & indentation
-- https://neovim.io/doc/user/usr_25.html#25.3
opt.autoindent = true -- Newlines get the same indent as the previous line
opt.shiftwidth = 2    -- Make an indent a multiple of 2
opt.expandtab = true  -- Always use spaces, instead of the tab character, when hitting <Tab>
opt.tabstop = 2       -- Make <Tab> use 2 spaces worth of indent, regardless what the tabstop was for the file (AFAIK, converts it)
opt.softtabstop = 2   -- Make <Tab> use 2 spaces worth of indent
opt.wrap = false      -- Disable line wrapping

-- Search settings
-- https://neovim.io/doc/user/pattern.html#%2Fignorecase
opt.ignorecase = true -- Ignore case of normal letters
opt.smartcase = true  -- Ignore case when pattern contains lowercase only

-- Appearance
-- https://neovim.io/doc/user/options.html#'cursorline'
opt.signcolumn = "yes"   -- Always display the signcolum
opt.cursorline = true    -- Highlight the text line of the cursor with CursorLine hl-CursorLine.
-- https://neovim.io/doc/user/options.html#'termguicolors'
opt.termguicolors = true -- Enables 24-bit RGB color
opt.background = "dark"  -- Set background color as dark

-- Window Splitting
opt.splitright = true -- When doing a vertical split, send the split to the right
opt.splitbelow = true -- When doing a horizontal split, send the split to the bottom half

-- Scrolling
opt.scrolloff = 3     -- Start scrolling three lines from the bottom
opt.sidescrolloff = 6 -- Start scrolling 6 lines from the right

-- Misc
-- https://neovim.io/doc/user/options.html#'backspace'
opt.backspace = "indent,eol,start"  -- Make backspace function more normally
opt.clipboard:append("unnamedplus") -- Yank to system clipboard
opt.iskeyword:append("-")           -- Include dashes as part of the word, when traversing with `w`
