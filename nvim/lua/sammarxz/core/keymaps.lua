vim.g.mapleader = ","

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "kj", "<ESC>")              -- exit insert mode

keymap.set("n", "<leader>cs", ":nohl<CR>")  -- cleans the search highlights

keymap.set("n", "<leader>w", ":w<CR>")      -- save file in normal mode
keymap.set("i", "<leader>w", "<ESC>:w<CR>") -- save in insert mode

keymap.set("n", "<leader>q", ":q<CR>")      -- quit

keymap.set("n", "<leader>d", ":t.<CR>")     -- duplicates the current line

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>v", "<C-w>v")        -- split window vertically
keymap.set("n", "<leader>h", "<C-w>s")        -- split window horizontally

keymap.set("n", "<leader>t", ":tabnew<CR>")   -- create new tab
keymap.set("n", "<leader>>", ":tabn<CR>")     -- next tab
keymap.set("n", "<leader><", ":tabp<CR>")     -- prev tab
keymap.set("n", "<leader>x", ":tabclose<CR>") -- close current tab


-- plugins keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- vim-emmet
keymap.set("i", "<leader><TAB>", "<plug>(emmet-expand-abbr)")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<CMD>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<CMD>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>")

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>")   -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>")  -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>")    -- list current changes per file with diff preview ["gs" for git status]

-- format current file
keymap.set("n", "<leader>lf", ":lua vim.lsp.buf.formatting {async= true}<CR>")
