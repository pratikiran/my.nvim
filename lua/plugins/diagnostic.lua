return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Load efficiently once the system boots up
    priority = 1000,    -- Force it to sit over the core theme graphics
    config = function()
      require("tiny-inline-diagnostic").setup({
        preset = "modern", -- Clean, modern layout matching the VS Code theme
        options = {
          -- Only displays when the text cursor explicitly lands on the line
          show_source = true, 
          use_icons_from_diagnostic = true,
          add_extmark_to_line = true, -- Highlights the entire line range contextually
        }
      })

      -- Turn off Neovim's basic text system to prevent duplicate text alerts
      vim.diagnostic.config({ virtual_text = false })
    end,
  },
}

