-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim and import your plugins directory
require("lazy").setup({
  spec = {
    -- import all files and subdirectories inside the lua/plugins folder
    { import = "plugins" },
  },
  -- Configure UI and other options here if desired
  install = { colorscheme = { "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates

  rocks = {
	  enabled=false, hererocks=false
  }
})

-- When 'y' (yank) it'll always copy the buffer to the system clipboard
vim.opt.clipboard = "unnamedplus"
 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Project View (Netrw)" })

vim.opt.number = true          -- Shows the absolute number of the current line
vim.opt.relativenumber = true  -- Shows relative line numbers for all other lines


