return {
    plugins = function(use)
        use {
            "vim-test/vim-test",
            setup = function()
                vim.cmd [[
                    let test#strategy = "vimux"
                ]]
            end,
            requires = {
                "preservim/vimux",
            },
        }
        use {
            "rcarriga/vim-ultest",
            requires = { "vim-test/vim-test" },
            run = ":UpdateRemotePlugins",
            config = function()
                -- require("ultest").setup {
                --     builders = {
                --         ["php#phpunit"] = function(cmd)
                --             P(cmd)
                --             return {
                --                 dap = {
                --                     name = "Debug test",
                --                     type = "php",
                --                     request = "launch",
                --                     program = "${file}",
                --                     cwd = "${fileDirname}",
                --                     args = cmd,
                --                     port = 9000,
                --                 },
                --             }
                --         end,
                --     },
                -- }
            end,
        }
    end,

    bindings = function(_, wk)
        wk.register({
            ["<leader>t"] = {
                name = "+Testing",
                n = { "<cmd>TestNearest<cr>", "Test nearest" },
                f = { "<cmd>TestFile<cr>", "Test file" },
                l = { "<cmd>TestLast<cr>", "Test Last" },
            },
        }, {
            mode = "n",
        })
    end,
}
