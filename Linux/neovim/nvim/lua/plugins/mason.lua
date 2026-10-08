
return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "jay-babu/mason-null-ls.nvim", -- Optional: for linters/formatters
    },
    config = function()
      -- Initialize mason
      require("mason").setup()

      -- Initialize mason-lspconfig
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "pyright" }, -- Add your LSPs here
        automatic_installation = true,
      })
    end,
  },
}

