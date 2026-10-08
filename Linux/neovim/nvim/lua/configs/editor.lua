-- ========================================================================== --
-- EDITOR OPTIONS
-- ========================================================================== --
local opt = vim.opt

-- Line numbers
opt.number = true         -- Show absolute line number
opt.relativenumber = true -- Show relative line numbers

-- Tabs & Indentation
opt.tabstop = 4        -- Number of spaces tabs count for
opt.shiftwidth = 4     -- Size of an indent
opt.expandtab = true   -- Use spaces instead of tabs
opt.smartindent = true -- Insert indents automatically

-- Search Behavior
opt.ignorecase = true -- Case-insensitive searching...
opt.smartcase = true  -- ...unless capital letters are typed
opt.hlsearch = false  -- Clear highlight after search finishes

-- System & UI
opt.termguicolors = true      -- True color support
opt.mouse = "a"               -- Enable mouse support
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.signcolumn = "yes"        -- Always show the sign column
opt.splitright = true         -- Open vertical splits to the right
opt.splitbelow = true         -- Open horizontal splits below
opt.updatetime = 250          -- Faster completion and UI updates
