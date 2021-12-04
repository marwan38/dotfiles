NvimConfigDir = vim.fn.stdpath "config"

require "nvim-config.settings"
vim.cmd("source " .. NvimConfigDir .. "/mappings.vim")
require "mappings"
vim.cmd("source " .. NvimConfigDir .. "/autocommands.vim")
require "nvim-config.plugins"
require "nvim-config.lsp"

-- Colorscheme tweaks and settings
require "nvim-config.colorscheme"
