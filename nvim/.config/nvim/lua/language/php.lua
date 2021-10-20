return {
    plugins = function(use)
        use {
            "phpactor/phpactor",
            branch = "master",
            ft = "php",
            run = "composer install --no-dev -o && bin/phpactor extension:install phpactor/phpunit-extension",
        }
    end,

    setup = function() end,

    on_ft = function()
        -- require("lspconfig").phpactor.setup {
        --     cmd = { require("packer").config.package_root .. "/packer/opt/phpactor/bin/phpactor", "language-server" },
        --     on_attach = require("lsp").on_attach,
        --     flags = {
        --         debounce_text_changes = 300,
        --     },
        -- }

        require("lspconfig").intelephense.setup {
            on_attach = function(client, bufnr)
                -- null-ls handles formatting using phpcbf or phpcsfixer
                client.resolved_capabilities.document_formatting = false
                client.resolved_capabilities.document_range_formatting = false

                require("lsp").on_attach(client, bufnr)
            end,
            capabilities = require("lsp").common_capabilities,
            flags = {
                debounce_text_changes = 300,
            },
            settings = {
                intelephense = {
                    environment = {
                        phpVersion = "7.4",
                    },
                },
            },
        }

        local null_ls = require "null-ls"

        null_ls.register(null_ls.builtins.diagnostics.phpstan.with {
            args = { "analyze", "--error-format", "json", "--no-progress", "--memory-limit", "512M", "$FILENAME", "--debug", "-vvv" },
            command = "./vendor/bin/phpstan",
            condition = function(utils)
                return utils.root_has_file "phpstan.neon"
            end,
        })

        null_ls.register(null_ls.builtins.diagnostics.phpcs.with {
            command = "./vendor/bin/phpcs",
        })

        null_ls.register(null_ls.builtins.formatting.phpcbf.with {
            command = "./vendor/bin/phpcbf",
        })

        null_ls.register(null_ls.builtins.formatting.phpcsfixer.with {
            args = {
                "--no-interaction",
                "--quiet",
                "--config=/home/marwan38/.config/phpcs/.php-cs-fixer.php",
                "fix",
                "$FILENAME",
            },
        })

        local dap = require "dap"
        dap.adapters.php = {
            type = "executable",
            command = "node",
            args = { "/home/marwan38/programs/vscode-php-debug/out/phpDebug.js" },
        }
        dap.configurations.php = {
            {
                name = "Listen for XDebug",
                type = "php",
                request = "launch",
                port = 9003,
                pathMappings = {
                    ["/srv/archipro/www/marwan/"] = "${workspaceFolder}/",
                },
                stopOnEntry = true,
                ignore = {
                    "**/silverstripe-cache/**/*.php",
                    "**/vendor/**/*.php",
                },
                hostname = "0.0.0.0",
            },
            {
                name = "Launch currently open script",
                type = "php",
                request = "launch",
                program = "${file}",
                cwd = "${fileDirname}",
                port = 9000,
            },
        }
        -- local dap_install = require "dap-install"
        -- dap_install.config("php_dbg", {
        --     {
        --         name = "Listen for XDebug",
        --         type = "php",
        --         request = "launch",
        --         port = 9003,
        --         pathMappings = {
        --             ["/home/ec2-user/www/team/marwan/"] = "${workspaceFolder}/",
        --         },
        --         -- stopOnEntry = true,
        --         ignore = {
        --             "**/silverstripe-cache/**/*.php",
        --             "**/vendor/**/*.php",
        --         },
        --         hostname = "0.0.0.0",
        --     },
        --     {
        --         name = "Launch currently open script",
        --         type = "php",
        --         request = "launch",
        --         program = "${file}",
        --         cwd = "${fileDirname}",
        --         port = 9000,
        --     },
        -- })

        require("which-key").register {
            ["<leader>l"] = {
                name = "+Php",
                i = { ":PhpactorImportClass<CR>", "Import the name under the cusor", buffer = 0 },
                I = {
                    ":PhpactorImportMissingClasses<CR>",
                    "Attempt to import all non-resolvable classes",
                    buffer = 0,
                },
                m = {
                    ":PhpactorContextMenu<CR>",
                    "show the context menu for the current cursor position",
                    buffer = 0,
                },
                n = { ":PhpactorNavigate<CR>", "Navigate", buffer = 0 },
                v = { ":PhpactorChangeVisibility<CR>", "Rotate visiblity", buffer = 0 },

                -- f is taken by format
                F = {
                    name = "+File",

                    c = { ":PhpactorCopyFile<CR>", "Copy the current file", buffer = 0 },
                    m = { ":PhpactorMoveFile<CR>", "Move the current file", buffer = 0 },
                },

                c = {
                    name = "+Class",

                    i = { ":PhpactorClassInflect<CR>", "Inflect a new class from the current class", buffer = 0 },
                    a = { ":PhpactorGenerateAccessors<CR>", "Generate accessors", buffer = 0 },
                    t = { ":PhpactorTransform<CR>", "Show transform context menu", buffer = 0 },
                    e = { ":PhpactorClassExpand<CR>", "Expand the class name", buffer = 0 },
                    n = { ":PhpactorClassNew<CR>", "Create a new class", buffer = 0 },
                },

                x = {
                    name = "+Extract",

                    m = { ":PhpactorExtractMethod<CR>", "Extract a new method", buffer = 0 },
                    v = { ":PhpactorExtractExpression<CR>", "Extract to a variable", buffer = 0 },
                    c = { ":PhpactorExtractConstant<CR>", "Extract a constant from a literal", buffer = 0 },
                },
            },
            ["gr"] = { ":PhpactorFindReferences<CR>", "Attempt to find all references", buffer = 0 },
        }
    end,
}
