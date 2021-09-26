return {
    plugins = function(use)
        use { "folke/lua-dev.nvim" }
    end,

    setup = function()
        local DATA_PATH = vim.fn.stdpath "data"

        local luadev = require("lua-dev").setup {
            lspconfig = {
                cmd = {
                    DATA_PATH .. "/lspinstall/lua/sumneko-lua-language-server",
                    "-E",
                    DATA_PATH .. "/lspinstall/lua/main.lua",
                },
                on_attach = require("lsp").on_attach,
                capabilities = require("lsp").common_capabilities(),
            },
        }

        local lspconfig = require "lspconfig"
        lspconfig.sumneko_lua.setup(luadev)

        local null_ls = require "null-ls"
        null_ls.register(null_ls.builtins.formatting.stylua)
    end,
}
