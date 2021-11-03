return {
    plugins = function(use)
        use "nvim-lua/plenary.nvim"
        use "airblade/vim-rooter"
        use "tpope/vim-eunuch"
    end,

    setup = function()
        vim.g.rooter_patterns = {
            ".git/",
            "init.lua",
            ".env",
            ".env.dist",
            ".stylua.toml",
            "package.json",
        }
        vim.g.rooter_silent_chdir = 0
    end,
}
