return {

    plugins = function(use)
        use "kyazdani42/nvim-tree.lua"
    end,

    setup = function()
        require("nvim-tree").setup {
            active = true,
            update_cwd = 1,
            respect_buf_cwd = 1,
            disable_netrw = 0,
            hijack_netrw = 0,

            side = "left",
            width = 30,
            show_icons = {
                git = 1,
                folders = 1,
                files = 1,
                folder_arrows = 1,
                tree_width = 30,
            },
            ignore = { ".git", "node_modules", ".cache" },
            auto_open = 0,
            auto_close = 1,
            quit_on_open = 0,
            follow = 1,

            hide_dotfiles = 0,
            git_hl = 1,
            root_folder_modifier = ":t",
            tab_open = 0,
            allow_resize = 1,
            lsp_diagnostics = 1,
            auto_ignore_ft = { "startify", "dashboard" },
            icons = {
                default = "",
                symlink = "",
                git = {
                    unstaged = "",
                    staged = "S",
                    unmerged = "",
                    renamed = "➜",
                    deleted = "",

                    untracked = "U",
                    ignored = "◌",
                },
                folder = {
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                },
                lsp = {
                    hint = "",
                    info = "",
                    warning = "",
                    error = "",
                },
            },
        }
    end,

    bindings = function(_, wk)
        local opts = { noremap = true, silent = true }

        wk.register({
            ["<leader>e"] = { "<cmd>NvimTreeFindFile<cr>", "Reveal in filetree" },
            ["<F3>"] = { "<cmd>NvimTreeToggle<cr>", "Toggle tree" },
        }, opts)
    end,
}
