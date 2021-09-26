return {

    plugins = function(use)
        use "kyazdani42/nvim-tree.lua"
    end,

    setup = function()
        vim.g.nvim_tree_git_hl = 1
        vim.g.nvim_tree_highlight_opened_files = 1

        vim.g.nvim_tree_window_picker_exclude = {
            filetype = {
                "packer",
                "qf",
                "dashboard",
            },
            buftype = {
                "terminal",
                "dashboard",
            },
        }
        vim.g.nvim_tree_special_files = {}
        vim.g.nvim_tree_show_icons = {

            git = 0,
            folders = 1,
            files = 1,
            folder_arrows = 1,
        }

        vim.g.nvim_tree_icons = {
            default = "",
            symlink = "",
            git = {
                unstaged = "~",
                staged = "+",
                unmerged = "",
                renamed = ">",
                untracked = "*",
                deleted = "-",

                ignored = "",
            },
            folder = {
                arrow_open = "",
                arrow_closed = "",
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",

                symlink_open = "",
            },
            lsp = {
                hint = "",
                info = "",
                warning = "",
                error = "",
            },
        }

        vim.api.nvim_exec(
            [[
    autocmd ColorScheme * highlight NvimTreeGitDirty guifg=#EBCB8B | highlight Directory guifg=#81A1C1
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) | execute 'cd '.argv()[0] | execute 'Dashboard' | wincmd l | endif
    ]],
            false
        )

        require("nvim-tree").setup {
            auto_close = false,
            open_on_setup = false,
            ignore_ft_on_setup = {
                "dashboard",
            },
            lsp_diagnostics = true,
            view = {
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
