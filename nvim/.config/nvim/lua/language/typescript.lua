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

                -- defaults
                ts_utils.setup {
                    debug = false,
                    disable_commands = false,
                    enable_import_on_completion = false,

                    -- import all
                    import_all_timeout = 5000, -- ms
                    import_all_priorities = {
                        buffers = 4, -- loaded buffer names
                        buffer_content = 3, -- loaded buffer content
                        local_files = 2, -- git files or files with relative path markers
                        same_file = 1, -- add to existing import statement
                    },
                    import_all_scan_buffers = 100,
                    import_all_select_source = false,

                    -- eslint
                    eslint_enable_code_actions = true,
                    eslint_enable_disable_comments = true,
                    eslint_bin = "eslint_d",
                    eslint_enable_diagnostics = true,
                    eslint_opts = {},

                    -- formatting
                    enable_formatting = true,
                    formatter = "eslint_d",
                    formatter_opts = {},

                    -- update imports on file move
                    update_imports_on_move = true,
                    require_confirmation_on_move = false,
                    watch_dir = nil,

                    -- filter diagnostics
                    filter_out_diagnostics_by_severity = {},
                    filter_out_diagnostics_by_code = {},
                }
                ts_utils.setup_client(client)
            end,
            flags = {
                debounce_text_changes = 150,
            },
        }

        local null_ls = require "null-ls"
        null_ls.register(null_ls.builtins.diagnostics.stylelint.with {
            filetypes = { "typescript", "typescriptreact" },
            command = "./node_modules/.bin/stylelint",
        })
        null_ls.register(null_ls.builtins.formatting.stylelint.with {
            filetypes = { "typescript", "typescriptreact" },
            command = "./node_modules/.bin/stylelint",
        })
    end,

    on_ft = function() end,
}
