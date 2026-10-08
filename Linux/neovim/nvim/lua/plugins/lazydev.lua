
return {
  {
    "folke/lazydev.nvim",
    ft = "lua", -- Only load for Lua files
    opts = {
      library = {
        -- Load luvit types when the container fields are found
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },
}

