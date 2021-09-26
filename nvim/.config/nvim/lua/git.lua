return {
    plugins = function(use)
        use "tpope/vim-fugitive"
        use "lewis6991/gitsigns.nvim"
    end,

    setup = function()
        require("gitsigns").setup {
            keymaps = {
                noremap = true,

                ["o ih"] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
                ["x ih"] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
            },
        }
    end,

    bindings = function(map)
        local wk = require "which-key"

        wk.register {
            ["<leader>g"] = { name = "+Git" },
            ["<leader>gh"] = { name = "+Hunk" },
            ["<leader>gn"] = {
                "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'",
                "Next hunk",
                expr = true,
            },
            ["<leader>gN"] = {
                "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'",
                "Prev hunk",
                expr = true,
            },
            ["<leader>ghs"] = { '<cmd>lua require"gitsigns".stage_hunk()<CR>', "Stage hunk" },
            ["<leader>ghu"] = { '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>', "Undo stage hunk" },
            ["<leader>ghr"] = { '<cmd>lua require"gitsigns".reset_hunk()<CR>', "Reset hunk" },
            ["<leader>gR"] = { '<cmd>lua require"gitsigns".reset_buffer()<CR>', "Reset buffer" },
            ["<leader>ghp"] = { '<cmd>lua require"gitsigns".preview_hunk()<CR>', "Preview hunk" },
            ["<leader>gb"] = { '<cmd>lua require"gitsigns".blame_line(true)<CR>', "Blame" },
            ["<leader>gs"] = { "<cmd>Telescope git_status<CR>", "Status" },
            ["<leader>gc"] = { "<cmd>Telescope git_bcommits<CR>", "Commits (buffer)" },
        }

        wk.register({
            ["<leader>ghs"] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
            ["<leader>ghr"] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
        }, {
            mode = "v",
        })
    end,

    on_ft = function()
        vim.api.nvim_exec(
            [[
    setlocal nocindent colorcolumn=+1 textwidth=80
    ]],
            true
        )
    end,

    on_gitrebase_ft = function()
        require("which-key").register {
            ["<leader>grp"] = { ":Pick<CR>", "Pick", buffer = 0 },
            ["<leader>grr"] = { ":Reword<CR>", "Reword", buffer = 0 },
            ["<leader>gre"] = { ":Edit<CR>", "Edit", buffer = 0 },
            ["<leader>grs"] = { ":Squash<CR>", "Squash", buffer = 0 },
            ["<leader>grf"] = { ":Fixup<CR>", "Fixup", buffer = 0 },
            ["<leader>grb"] = { ":Break<CR>", "Break", buffer = 0 },
            ["<leader>grd"] = { ":Drop<CR>", "Drop", buffer = 0 },
        }
    end,
}