local schemas = {
    {
        description = "Package JSON file",
        fileMatch = { "package.json" },
        url = "https://json.schemastore.org/package.json",
    },
    {
        description = "TypeScript compiler configuration file",
        fileMatch = { "tsconfig.json", "tsconfig.*.json" },
        url = "http://json.schemastore.org/tsconfig",
    },
    {
        description = "Lerna config",
        fileMatch = { "lerna.json" },
        url = "http://json.schemastore.org/lerna",
    },
    {

        description = "Babel configuration",

        fileMatch = { ".babelrc.json", ".babelrc", "babel.config.json" },
        url = "http://json.schemastore.org/lerna",
    },
    {
        description = "ESLint config",

        fileMatch = { ".eslintrc.json", ".eslintrc" },
        url = "http://json.schemastore.org/eslintrc",
    },
    {
        description = "Bucklescript config",
        fileMatch = { "bsconfig.json" },

        url = "https://bucklescript.github.io/bucklescript/docson/build-schema.json",
    },
    {
        description = "Prettier config",

        fileMatch = { ".prettierrc", ".prettierrc.json", "prettier.config.json" },
        url = "http://json.schemastore.org/prettierrc",
    },
    {
        description = "Vercel Now config",
        fileMatch = { "now.json" },
        url = "http://json.schemastore.org/now",
    },

    {
        description = "Stylelint config",
        fileMatch = { ".stylelintrc", ".stylelintrc.json", "stylelint.config.json" },
        url = "http://json.schemastore.org/stylelintrc",
    },
}

return {
    plugins = function(use)
        use {
            "vuki656/package-info.nvim",
            requires = "MunifTanjim/nui.nvim",
        }
    end,

    bindings = function(_, wk)
        wk.register {
            ["<leader>n"] = {
                name = "Package info",
                s = { ":lua require('package-info').show()<CR>", "Show" },
                c = { ":lua require('package-info').hide()<CR>", "Hide" },
                u = { ":lua require('package-info').update()<CR>", "Update" },
                d = { ":lua require('package-info').delete()<CR>", "Delete" },
                i = { ":lua require('package-info').install()<CR>", "Install" },
                r = { ":lua require('package-info').reinstall()<CR>", "Reinstall" },
                p = { ":lua require('package-info').change_version()<CR>", "Change version" },
            },
        }
    end,

    setup = function()
        require("package-info").setup {
            package_manager = "npm",
        }

        local lsp = require "lsp"
        local null_ls = require "null-ls"

        require("lspconfig").jsonls.setup {
            on_attach = function(client, bufnr)
                client.resolved_capabilities.document_formatting = false
                lsp.on_attach(client, bufnr)
            end,
            capabilities = lsp.common_capabilities(),
            settings = {
                json = {
                    schemas = schemas,
                },
            },
        }

        null_ls.register(null_ls.builtins.formatting.prettier.with {
            filetypes = { "json", "yaml", "markdown" },
        })
    end,

    on_ft = function() end,
}
