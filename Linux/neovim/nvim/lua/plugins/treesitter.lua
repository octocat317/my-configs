
-- Syntax Highlighting
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "lua", "vim", "vimdoc", "javascript", "typescript", "python" },
      highlight = { enable = true },
    })
  end
}
 
