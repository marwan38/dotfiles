return {

    plugins = function(use)
        use "kyazdani42/nvim-tree.lua"
    end,

    setup = function()
        vim.api.nvim_exec(
            [[
    autocmd ColorScheme * highlight NvimTreeGitDirty guifg=#EBCB8B | highlight Directory guifg=#81A1C1
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) | execute 'cd '.argv()[0] | execute 'Dashboard' | wincmd l | endif
    ]],
            false
        )
        local global_configs = {
            show_icons = {
                git = 1,
                folders = 1,
                files = 1,
                folder_arrows = 1,
                tree_width = 30,
            },
            ignore = { ".git", "node_modules", ".cache" },
            quit_on_open = 0,
            hide_dotfiles = 1,
            git_hl = 1,
            root_folder_modifier = ":t",
            allow_resize = 1,
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
            },
        }

        for opt, val in pairs(global_configs) do
            vim.g["nvim_tree_" .. opt] = val
        end

        require("nvim-tree").setup {
            auto_open = 0,
            auto_close = 1,
            tab_open = 0,
            update_focused_file = {
                enable = 1,
            },
            lsp_diagnostics = 1,
            view = {

                width = 50,
                side = "left",
                auto_resize = false,
                mappings = {
                    custom_only = false,
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
