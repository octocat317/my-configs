
return {
  "L3MON4D3/LuaSnip",
  -- Follow latest release.
  version = "v2.*",
  -- Install jsregexp (optional!).
  build = "make install_jsregexp",
  dependencies = { "rafamadriz/friendly-snippets" },
  config = function()
    local luasnip = require("luasnip")

    -- Lazy-load vscode-style snippets (like friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Your custom configuration goes here
    luasnip.config.set_config({
      history = true,
      updateevents = "TextChanged,TextChangedI",
    })
  end,
}

