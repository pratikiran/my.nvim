return { -- <-- Make sure "return" is right here on line 1!
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "gopls", "ts_ls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { 
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp", -- Connected to your autocomplete engine
    },
    config = function()
      local lsp = vim.lsp.config

      -- 1. Grab autocomplete capabilities from cmp
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- 2. Define standard shared settings (Instantly load colors, connect capabilities)
      local shared_config = {
        capabilities = capabilities,
      }

      -- 3. Register your engines using the shared configuration
      lsp("gopls", shared_config)
      lsp("ts_ls", shared_config)

      -- CRITICAL STEP: Explicitly command Neovim to turn on your engines
      vim.lsp.enable({ "gopls", "ts_ls" })

      -- Helpful Keymaps (Triggered when inside a code file)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show documentation" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
    end,
  },
}

