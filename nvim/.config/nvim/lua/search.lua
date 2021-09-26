return {
    plugins = function(use)
        use "haya14busa/vim-asterisk"
        use {
            "phaazon/hop.nvim",
            config = function()
                require("hop").setup()
            end,
        }
    end,

    bindings = function(map)
        map("n", "*", "<Plug>(asterisk-z*)", {})
        map("n", "#", "<Plug>(asterisk-z#)", {})
        map("n", "g*", "<Plug>(asterisk-gz*)", {})
        map("n", "g#", "<Plug>(asterisk-gz#)", {})

        map("n", "s", "<CMD>HopChar2<CR>", { silent = true })
        map("n", "S", "<CMD>HopWord<CR>", { silent = true })
    end,
}
