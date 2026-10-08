
return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      -- Initialize Mason installers
      require("mason").setup()
      
      local mason_lspconfig = require("mason-lspconfig")
      mason_lspconfig.setup({
        ensure_installed = { "lua_ls" }, -- Add your other language servers here
      })

      -- Extract capabilities from blink if it exists
      local has_blink, blink = pcall(require, "blink.cmp")
      local capabilities = has_blink and blink.get_lsp_capabilities() or {}

      -- Apply capabilities globally using the modern Neovim 0.11+ framework
      vim.lsp.config("*", {
        capabilities = capabilities,
      })

      -- Natively activate all language servers managed by Mason
      for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
        vim.lsp.enable(server)
      end
    end,
  }
}

