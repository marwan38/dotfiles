return {

    plugins = function(use)
        use "kyazdani42/nvim-tree.lua"
    end,

    setup = function()
        local global_configs = {
            show_icons = {
                git = 1,
                folders = 1,
                files = 1,
                folder_arrows = 1,
                tree_width = 30,
            },
            ignore = { ".git", "node_modules", ".cache" },
            quit_on_open = 1,
            hide_dotfiles = 0,
            git_hl = 1,
            root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" },
            highlight_opened_files = 1,
            allow_resize = 1,
            auto_ignore_ft = { "dashboard" },
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
            },
        }

        for opt, val in pairs(global_configs) do
            vim.g["nvim_tree_" .. opt] = val
        end

        require("nvim-tree").setup {
            lsp_diagnostics = false,

            disable_netrw = true,
            hijack_netrw = true,
            ignore_ft_on_setup = { "dashboard" },
            auto_close = false,
            open_on_tab = false,
            hijack_cursor = true,
            update_cwd = true,
            update_focused_file = {
                enable = true,
                update_cwd = true,
            },

            view = {
                allow_resize = true,
                side = "left",
                width = 40,
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
