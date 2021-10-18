return {
    plugins = function(use)
        use { "jose-elias-alvarez/nvim-lsp-ts-utils" }
    end,

    setup = function()
        require("lspconfig").tsserver.setup {
            on_attach = function(client, bufnr)
                -- disable tsserver formatting if you plan on formatting via null-ls
                client.resolved_capabilities.document_formatting = false
                client.resolved_capabilities.document_range_formatting = false

                require("lsp").on_attach(client, bufnr)

                local ts_utils = require "nvim-lsp-ts-utils"

                ts_utils.setup {
                    -- debug = true,
                    enable_import_on_completion = true,
                    import_all_scan_buffers = 100,
                    eslint_bin = "eslint_d",

                    eslint_enable_diagnostics = true,
                    eslint_opts = {
                        -- condition = function(utils)
                        --     return utils.root_has_file ".eslintrc.js"
                        -- end,

                        diagnostics_format = "#{m} [#{c}]",
                    },
                    enable_formatting = true,
                    formatter = "eslint_d",
                    update_imports_on_move = true,
                    -- filter out dumb module warning
                    filter_out_diagnostics_by_code = { 80001 },
                }

                ts_utils.setup_client(client)
            end,
            capabilities = require("lsp").common_capabilities(),
            flags = {
                debounce_text_changes = 150,
            },
        }

        local null_ls = require "null-ls"
        -- null_ls.register(null_ls.builtins.diagnostics.stylelint.with {
        --     filetypes = { "typescript", "typescriptreact" },
        --     command = "./node_modules/.bin/stylelint",
        -- })
        -- null_ls.register(null_ls.builtins.formatting.stylelint.with {
        --     filetypes = { "typescript", "typescriptreact" },
        --     command = "./node_modules/.bin/stylelint",
        -- })
    end,

    on_ft = function() end,
}
