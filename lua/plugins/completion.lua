return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- Tells autocomplete how to read your LSP servers
      "hrsh7th/cmp-buffer",   -- Allows autocompleting words written inside your active file
      "hrsh7th/cmp-path",     -- Automatically fills out local filesystem path directories
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(), -- Force pop-up the window manually
          ["<C-e>"] = cmp.mapping.abort(),        -- Dismiss the completion engine menu
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- 'Enter' accepts the highlighted word
        }),
        -- Link your sources in ranking order of importance
        sources = cmp.config.sources({
          { name = "nvim-lsp" }, -- Top priority: code logic completions from servers
          { name = "path" },     -- Middle priority: system directory file paths
          { name = "buffer" },   -- Low priority: standard words in current buffer
        }),
      })
    end,
  },
}

