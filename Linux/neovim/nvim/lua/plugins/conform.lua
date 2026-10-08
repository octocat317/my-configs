
return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      -- C & C++ (Uses clang-format)
      c = { "clang-format" },
      cpp = { "clang-format" },

      -- Java (Uses google-java-format)
      java = { "google-java-format" },

      -- Python (Runs ruff, falls back to black)
      python = { "ruff_format", "black", stop_after_first = true },

      -- Lua (Uses stylua)
      lua = { "stylua" },

      -- Haskell (Uses hindent)
      haskell = { "hindent" },

      -- JavaScript & HTML (Tries prettierd first for speed, falls back to prettier)
      javascript = { "prettierd", "prettier", stop_after_first = true },
      html = { "prettierd", "prettier", stop_after_first = true },

      -- Rust (Uses the official rustfmt tool)
      rust = { "rustfmt" },

      -- Go (Runs goimports to organize imports, then gofmt to format)
      go = { "goimports", "gofmt" },

      -- Assembly / ASM (Uses asmfmt)
      asm = { "asmfmt" },
    },
    
    -- Triggers formatting automatically every time you save a file
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}

