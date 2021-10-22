local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system { "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path }
    execute "packadd packer.nvim"
end

local packer = require "packer"
vim.g.root_dir = vim.fn.fnamemodify(vim.fn.resolve(vim.fn.expand "<sfile>:p"), ":h")

local use = packer.use

local layers = {
    require "options",
    require "commands",
    require "system",
    require "edit",
    require "ui",
    require "filetree",
    require "homepage",
    require "yanking",
    require "completion",
    require "treesitter",
    require "finder",

    require "diagnostics",
    require "git",
    require "search",
    require "terminal",
    require "project",
    require "debugging",
    require "tmux",
    require "testing",

    require "lsp",
    require "language/php",
    require "language/typescript",
    require "language/html",
    require "language/lua",
    require "language/json",
    require "language/css",
    require "language/rust",
}

packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "single" }
        end,
    },
    git = {
        clone_timeout = 1500, -- Timeout, in seconds, for git clones
    },
}

packer.startup {
    function()
        use "wbthomason/packer.nvim"

        for _, layer in pairs(layers) do
            if layer.plugins ~= nil then
                layer.plugins(use)
            end
        end
    end,
}

for _, layer in pairs(layers) do
    if layer.setup ~= nil then
        layer.setup()
    end
end

local map = vim.api.nvim_set_keymap
for _, layer in pairs(layers) do
    if layer.bindings ~= nil then
        layer.bindings(map, require "which-key")
    end
end
