return {
    plugins = function(use)
        use "tpope/vim-surround"
        use "tpope/vim-repeat"

        use "AndrewRadev/splitjoin.vim"
        use "lambdalisue/suda.vim"
        use "ntpeters/vim-better-whitespace"
        use "terrortylor/nvim-comment"
        use "windwp/nvim-spectre"
    end,

    setup = function()
        vim.opt.tabstop = 4
        vim.opt.softtabstop = 4
        vim.opt.shiftwidth = 4
        vim.opt.expandtab = true

        vim.cmd [[ autocmd ColorScheme * highlight ExtraWhitespace guibg=#3B4252]]

        vim.g.better_whitespace_enabled = 1
        vim.g.strip_whitespace_on_save = 1
        vim.g.strip_whitespace_confirm = 0
        vim.g.better_whitespace_operator = ""
        vim.cmd [[ autocmd FileType dashboard DisableWhitespace ]]

        local nvim_comment = require "nvim_comment"
        nvim_comment.setup {
            on_config_done = nil,
            -- Linters prefer comment and line to have a space in between markers
            marker_padding = true,
            -- should comment out empty or whitespace only lines
            comment_empty = false,
            -- Should key mappings be created
            create_mappings = false,
            -- Normal mode mapping left hand side

            line_mapping = "gcc",
            -- Visual/Operator mapping left hand side
            operator_mapping = "gc",
            -- Hook function to call before commenting takes place
            hook = nil,
        }
    end,

    bindings = function(map)
        local wk = require "which-key"

        -- Save
        map("n", "<c-s>", ":<c-u>w<CR>", { noremap = true })
        map("v", "<c-s>", ":<c-u>w<CR>gv", { noremap = true })
        map("i", "<C-s>", "<C-o>:w<CR>", { noremap = true })

        -- Ctrl+Shift+Up/Down to move up and down
        map("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
        map("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
        map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })
        map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })
        map("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
        map("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

        -- Use tab for indenting in visual mode
        map("i", "<S-Tab>", "<C-D>", { noremap = true })
        map("v", "<Tab>", ">gv", { noremap = true })
        map("v", "<S-Tab>", "<gv", { noremap = true })
        map("v", ">", ">gv", { noremap = true })
        map("v", "<", "<gv", { noremap = true })

        map("n", "<leader>/", ":CommentToggle<CR>", { noremap = true, silent = true })
        map("v", "<leader>/", ":CommentToggle<CR>", { noremap = true, silent = true })

        map("n", "<ESC><ESC>", ":nohl<CR>", { silent = true })

        map("n", "n", "nzz", { silent = true })
        map("n", "N", "Nzz", { silent = true })

        wk.register({
            ["<leader>"] = {
                [";"] = { "A;<C-c>", "which_key_ignore" },
                [","] = { "A,<C-c>", "which_key_ignore" },
            },
            ["<leader>fW"] = { ":SudaWrite<CR>", "Sudo save" },
        }, {
            mode = "n",
        })

        wk.register {
            ["<leader>r"] = {
                name = "+Replace",
                o = { "<cmd>lua require('spectre').open()<cr>", "Open spectre" },
                w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Word" },
            },
        }
    end,
}
