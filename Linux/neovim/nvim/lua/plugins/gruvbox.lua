return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,        -- High priority ensures it loads first thing on startup
    lazy = false,           -- Don't lazy load the main colorscheme
    opts = {
        terminal_colors = true, -- Add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
            strings = true,
            emphasis = true,
            comments = true, -- Italicize comments for a modern look
            operators = false,
            folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- Invert background for search, diffs, statuslines
        contrast = "hard", -- Options: "soft", "medium", "hard"
        palette_overrides = {},
        overrides = {
            -- Example: Make SignColumn background match normal background
            SignColumn = { bg = "NONE" },
        },
        dim_inactive = false,
        transparent_mode = true, -- Set to true if you want your terminal bg to show through
    },
    config = function(_, opts)
        require("gruvbox").setup(opts)
        vim.cmd([[colorscheme gruvbox]])
    end,
}

-- return {
--   "ellisonleao/gruvbox.nvim",
--   priority = 10,
--   config = function()
--     vim.cmd([[colorscheme gruvbox]])
--   end
-- }
