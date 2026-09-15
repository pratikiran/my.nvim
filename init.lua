-- Make sure to setup `mapleader` and `maplocalleader` before loading lazy.nvim
-- so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load the package manager configuration
require("config.lazy")

-- Indentation options (4 spaces)
vim.opt.tabstop = 4        -- Number of spaces a <Tab> counts for
vim.opt.softtabstop = 4    -- Number of spaces inserted when editing
vim.opt.shiftwidth = 4     -- Size of an indent
vim.opt.expandtab = true   -- Convert tabs to spaces

