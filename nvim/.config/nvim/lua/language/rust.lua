return {
    plugins = function(use)
        use "simrat39/rust-tools.nvim"
    end,
    setup = function()
        require("rust-tools").setup {
            server = {
                on_attach = require("lsp").on_attach,
            },
        }
        -- local null_ls = require "null-ls"
        -- null_ls.register(null_ls.builtins.formatting.rustfmt)
    end,
    on_ft = function() end,
}
