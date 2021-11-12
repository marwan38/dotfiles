return {
    plugins = function(use)
        use { "kristijanhusak/orgmode.nvim" }
        use {
            "akinsho/org-bullets.nvim",
            requires = { "kristijanhusak/orgmode.nvim" },
        }
        use {
            "lukas-reineke/headlines.nvim",
            requires = { "kristijanhusak/orgmode.nvim" },
        }
        use { "michaelb/sniprun", run = "bash ./install.sh" }
        use { "dhruvasagar/vim-table-mode" }

        -- use {
        --     "vimwiki/vimwiki",
        -- }
    end,

    setup = function()
        require("orgmode").setup {
            org_agenda_files = { "~/org/**/*" },
            org_default_notes_file = "~/org/notes.org",
        }

        require("org-bullets").setup {
            symbols = { "◉", "○", "✸", "✿" },
        }

        require("headlines").setup {}
    end,
}
