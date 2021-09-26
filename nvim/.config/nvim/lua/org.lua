return {
    plugins = function(use)
        use {
            "kristijanhusak/orgmode.nvim",
            config = function()
                require("orgmode").setup {
                    org_agenda_files = { "~/orgs/**/*" },
                    org_default_notes_file = "~/orgs/refile.org",
                }
            end,
        }
    end,
}
