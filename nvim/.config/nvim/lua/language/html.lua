return {
    setup = function()
        require("lspconfig").html.setup {
            on_attach = require("lsp").on_attach,
            capabilities = require("lsp").common_capabilities,
        }
    end,
}
