
return {
  "numToStr/Comment.nvim",
  dependencies = {
    -- Optional: Better commenting inside JSX/TSX, HTML, Vue, etc.
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  keys = {
    { "gcc", desc = "Toggle line comment" },
    { "gbc", desc = "Toggle block comment" },
    { "gc", mode = { "n", "v" }, desc = "Toggle comment" },
    { "gb", mode = { "n", "v" }, desc = "Toggle block comment" },
  },
  config = function()
    -- Configure the context commentstring plugin if installed
    local has_context, context = pcall(require, "ts_context_commentstring.integrations.comment_nvim")
    
    require("Comment").setup({
      ---LHS of toggle mappings in NORMAL mode
      toggler = {
        line = "gcc",  -- Toggle line comment
        block = "gbc", -- Toggle block comment
        },
      ---LHS of operator-pending mappings in NORMAL and VISUAL mode
      opleader = {
        line = "gc",  -- Line-comment keymap
        block = "gb", -- Block-comment keymap
      },
      ---LHS of extra mappings
      extra = {
        above = "gcO", -- Add comment on the line above
        below = "gco", -- Add comment on the line below
        eol = "gcA",   -- Add comment at the end of the line
      },
      ---Enable keybindings
      mappings = {
        basic = true,  -- operator-pending mappings (gcc, gbc, gc, gb)
        extra = true,  -- extra mappings (gco, gcO, gcA)
      },
      ---Pre-hook to handle multi-language/JSX files correctly
      pre_hook = has_context and context.create_pre_hook() or nil,
    })
  end,
}

