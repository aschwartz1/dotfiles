require("alex.core.keymaps")

local opts = { noremap = true, silent = true } 

-- Open previous file
set("n", "<leader><leader>", "<C-^>")

-- Don't copy singe char deletes into register
set("n", "x", '"_x')

-- Window management
set("n", "<leader>v", "<C-w>v")     -- vertical split
set("n", "<leader>h", "<C-w>s")     -- horizontal split
set("n", "<leader>e", "<C-w>=")     -- make splits the same size
set("n", "<leader>x", ":close<CR>") -- close current split

-- Tab management
set("n", "<leader>t", ":tabnew<CR>")   -- open a new tab
set("n", "<leader>w", ":tabclose<CR>") -- close the current tab

-- Moving lines, normal mode
set("n", "<S-k>", ":m-2<CR>", opts)         -- up
set("n", "<S-j>", ":m+<CR>", opts)          -- down

-- Moving lines, visual mode
set("v", "<S-j>", ":m '>+1<CR>gv=gv", opts) -- up
set("v", "<S-k>", ":m '<-2<CR>gv=gv", opts) -- down
