return {
    plugins = function(use)
        use { "jose-elias-alvarez/nvim-lsp-ts-utils" }
    end,

    setup = function()
        local lspconfig = require "lspconfig"
        local lsp = require "lsp"
        local capabilities = lsp.common_capabilities

        lspconfig.tsserver.setup {
            init_options = require("nvim-lsp-ts-utils").init_options,
            on_attach = function(client, bufnr)
                -- disable tsserver formatting if you plan on formatting via null-ls
                client.resolved_capabilities.document_formatting = false
                client.resolved_capabilities.document_range_formatting = false

                local ts_utils = require "nvim-lsp-ts-utils"

                ts_utils.setup {
                    -- debug = true,
                    enable_import_on_completion = true,
                    import_all_scan_buffers = 100,
                    eslint_bin = "eslint_d",

                    eslint_enable_diagnostics = true,
                    eslint_opts = {
                        condition = function(utils)
                            return utils.root_has_file ".eslintrc.js" or utils.root_has_file "package.json"
                        end,

                        diagnostics_format = "#{m} [#{c}]",
                    },
                    enable_formatting = true,
                    formatter = "eslint_d",
                    update_imports_on_move = true,
                    -- filter out dumb module warning
                    filter_out_diagnostics_by_code = { 80001 },

                    -- inlay hints
                    auto_inlay_hints = true,
                    inlay_hints_highlight = "Comment",
                }

                ts_utils.setup_client(client)
                lsp.on_attach(client, bufnr)
            end,
            capabilities,
            flags = {
                debounce_text_changes = 150,
            },
        }

        local null_ls = require "null-ls"
        null_ls.register(null_ls.builtins.diagnostics.stylelint.with {
            filetypes = { "typescript", "typescriptreact" },
            command = "./node_modules/.bin/stylelint",
            condition = function(utils)
                return utils.root_has_file ".stylelintrc"
            end,
        })
        null_ls.register(null_ls.builtins.formatting.stylelint.with {
            filetypes = { "typescript", "typescriptreact" },
            command = "./node_modules/.bin/stylelint",
            condition = function(utils)
                return utils.root_has_file ".stylelintrc"
            end,
        })
    end,

    on_ft = function() end,
}

-- For when ESLint LSP is stable
-- return {

--     setup = function()
--         local lspconfig = require "lspconfig"
--         local lsp = require "lsp"
--         local capabilities = lsp.common_capabilities

--         lspconfig.tsserver.setup {
--             on_attach = function(client, bufnr)
--                 -- disable tsserver formatting if you plan on formatting via null-ls
--                 client.resolved_capabilities.document_formatting = false
--                 client.resolved_capabilities.document_range_formatting = false

--                 lsp.on_attach(client, bufnr)
--             end,
--             capabilities,
--             flags = {
--                 debounce_text_changes = 150,
--             },
--         }

--         lspconfig.eslint.setup {
--             on_attach = lsp.on_attach,
--             capabilities,
--         }

--         -- local null_ls = require "null-ls"
--         -- null_ls.register(null_ls.builtins.diagnostics.stylelint.with {
--         --     filetypes = { "typescript", "typescriptreact" },
--         --     command = "./node_modules/.bin/stylelint",
--         -- })
--         -- null_ls.register(null_ls.builtins.formatting.stylelint.with {
--         --     filetypes = { "typescript", "typescriptreact" },
--         --     command = "./node_modules/.bin/stylelint",
--         -- })
--     end,

--     on_ft = function()
--         local wk = require "which-key"

--         wk.register {
--             ["<leader>lf"] = { "<cmd> EslintFixAll<CR>", "EslintFixAll" },
--         }
--     end,
-- }
