return {
    plugins = function(use)
        use "sheerun/vim-polyglot"
        use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
        use "nvim-treesitter/nvim-treesitter-textobjects"
        use "JoosepAlviste/nvim-ts-context-commentstring"
        use "windwp/nvim-ts-autotag"
        use "andymass/vim-matchup"
        use { "nvim-treesitter/playground", run = ":TSInstall query" }
    end,

    setup = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = {
                "lua",
                "vim",
                "bash",
                "php",
                "yaml",
                "toml",
                "typescript",
                "javascript",
                "tsx",
                "css",
                "json",
                "html",
                "graphql",
                "dockerfile",
                "rust",
            },
            playground = {
                enable = true,
                disable = {},

                updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
                persist_queries = false, -- Whether the query persists across vim sessions
                keybindings = {
                    toggle_query_editor = "o",
                    toggle_hl_groups = "i",
                    toggle_injected_languages = "t",

                    toggle_anonymous_nodes = "a",

                    toggle_language_display = "I",
                    focus_language = "f",
                    unfocus_language = "F",
                    update = "R",
                    goto_node = "<cr>",
                    show_help = "?",
                },
            },
            textobjects = {
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ["af"] = "@function.outer",
                        ["if"] = "@function.inner",
                        ["ac"] = "@class.outer",
                        ["ic"] = "@class.inner",
                        ["ia"] = "@parameter.inner",
                        ["aa"] = "@parameter.outer",
                        -- ["i"] = "@block.inner",
                        -- ["a"] = "@block.outer",
                        -- ["im"] = "@call.inner",
                        -- ["am"] = "@call.outer",
                        -- @comment.outer
                        -- ["iC"] = '@conditional.inner',
                        -- ["aC"] = '@conditional.outer',
                        -- @frame.inner
                        -- @frame.outer
                        -- @loop.inner
                        -- @loop.outer
                        -- @scopename.inner
                        -- @statement.outer
                    },
                },
                move = {
                    enable = true,
                    set_jumps = true, -- whether to set jumps in the jumplist
                    goto_next_start = {
                        ["]m"] = "@function.outer",
                    },
                    goto_next_end = {
                        ["]M"] = "@function.outer",
                    },
                    goto_previous_start = {
                        ["[m"] = "@function.outer",
                    },
                    goto_previous_end = {
                        ["[M"] = "@function.outer",
                    },
                },
            },
            highlight = {
                enable = true,
                use_languagetree = false,
            },
            indent = {
                enable = true,
            },
            autopairs = {
                enable = false,
            },
            matchup = {
                enable = true,
                disable = {},
            },
            context_commentstring = {
                enable = true,
                enable_autocmd = false, -- for nvim-comment integration
            },
            autotag = {
                enable = true,
            },
        }

        -- vim.cmd [[ autocmd ColorScheme * highlight TSError cterm=undercurl ctermfg=1 gui=undercurl guifg=NONE guisp=#BF616A ]]
    end,

    bindings = function(_, wk)
        wk.register {
            ["<leader>T"] = {
                name = "TreeSitter",
                h = { "<CMD>TSHighlightCapturesUnderCursor<CR>", "Captures under cursor" },
                p = { "<CMD>TSPlaygroundToggle<CR>", "Toggle playground" },
            },
        }
    end,
}
