return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.config").setup({
        -- Automatically download engines for your languages
        ensure_installed = { "go", "javascript", "typescript", "lua", "vim", "vimdoc" },
        highlight = {
          enable = true, -- Enables the advanced coloring
        },
        indent = {
          enable = true, -- Better intelligent indentation
        },
      })
    end,
  },
}

