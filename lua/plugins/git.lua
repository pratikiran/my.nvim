return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add          = { text = "▎" }, -- A clean, elegant vertical bar
          change       = { text = "▎" },
          delete       = { text = " " },
          topdelete    = { text = "▔" },
          changedelete = { text = "±" },
          untracked    = { text = "┆" },
        },
        signcolumn = true,  -- TRUE: Keeps the colored sidebar line visible
        numhl      = false, -- FALSE: Turns off character substitution on line numbers!
        linehl     = false,
      })
    end,
  },
}

