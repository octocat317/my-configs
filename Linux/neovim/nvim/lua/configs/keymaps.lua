-- ========================================================================== --
-- KEYMAPS
-- ========================================================================== --

local keymap = vim.keymap.set

-- Clear search highlights easily
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Better window navigation (use Ctrl + h/j/k/l)
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Keep cursor centered when scrolling pages
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- Stay in visual mode after indenting blocks
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

require("configs.run")

