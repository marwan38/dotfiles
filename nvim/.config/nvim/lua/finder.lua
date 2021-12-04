return {
    plugins = function(use)
        use "nvim-telescope/telescope.nvim"
        use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    end,

    setup = function()
        local telescope = require "telescope"
        local actions = require "telescope.actions"
        local action_state = require "telescope.actions.state"

        telescope.setup {
            defaults = {
                --                 prompt_prefix = "   ",
                --                 selection_caret = "  ",
                --                 entry_prefix = "  ",
                --                 initial_mode = "insert",
                --                 selection_strategy = "reset",
                --                 sorting_strategy = "ascending",
                --                 layout_strategy = "horizontal",

                --                 layout_config = {
                --                     horizontal = {
                --                         prompt_position = "top",
                --                         preview_width = 0.55,
                --                         results_width = 0.8,
                --                     },
                --                     vertical = {
                --                         mirror = false,
                --                     },
                --                     width = 0.87,

                --                     height = 0.80,
                --                     preview_cutoff = 120,
                --                 },

                --                 file_sorter = require("telescope.sorters").get_fuzzy_file,
                --                 file_ignore_patterns = {},
                --                 generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
                --                 path_display = { "absolute" },
                --                 winblend = 0,
                --                 border = {},
                --                 borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
                --                 color_devicons = true,
                --                 use_less = true,

                --                 set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
                --                 file_previewer = require("telescope.previewers").vim_buffer_cat.new,
                --                 grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
                --                 qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
                --                 -- Developer configurations: Not meant for general override
                --                 buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
                -- path_display = { shorten = 3 },
                mappings = {
                    i = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-c>"] = actions.close,
                        ["<C-n>"] = actions.cycle_history_next,
                        ["<C-p>"] = actions.cycle_history_prev,
                        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
                        ["<CR>"] = actions.select_default + actions.center,
                    },

                    n = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
                        ["<C-c>"] = actions.close,
                    },
                },
            },
            pickers = {
                git_commits = {
                    mappings = {
                        i = {
                            ["<C-M-d>"] = function()
                                -- Open in diffview
                                local selected_entry = action_state.get_selected_entry()
                                local value = selected_entry.value
                                -- close Telescope window properly prior to switching windows
                                vim.api.nvim_win_close(0, true)
                                vim.cmd "stopinsert"
                                vim.cmd(("DiffviewOpen %s^!"):format(value))
                            end,
                        },
                    },
                },
            },
            extensions = {
                fzf = {
                    fuzzy = true, -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true, -- override the file sorter
                    case_mode = "smart_case", -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                },
            },
        }
        require("telescope").load_extension "fzf"
    end,

    bindings = function(map)
        local wk = require "which-key"

        wk.register({
            ["<leader>ff"] = { "<cmd>lua require('telescope.builtin').find_files()<cr>", "Find files" },
            ["<leader>fw"] = { "':Telescope find_files<cr>' . expand('<cword>')", "Find file <cword>", expr = true },
            ["<leader>fm"] = { "<cmd>Telescope oldfiles cwd_only=true<cr>", "MRU files" },
            ["<leader>s"] = {
                name = "+Search",
                s = { "<cmd>lua require('telescope.builtin').live_grep()<cr>", "Live grep" },
                w = { "<cmd>lua require('telescope.builtin').grep_string()<cr>", "Grep word" },
            },
            ["<leader>bb"] = { "<cmd>lua require('telescope.builtin').buffers()<cr>", "Buffers" },
        }, {
            mode = "n",
        })

        map("n", "<c-p>", "<cmd>lua require('telescope.builtin').find_files()<cr>", {})
    end,
}
