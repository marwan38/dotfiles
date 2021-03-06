local lspconfig = require "lspconfig"

lspconfig.intelephense.setup {
  on_attach = function(client, bufnr)
    -- null-ls handles formatting using phpcbf or phpcsfixer
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false

    LspCommonOnAttach(client, bufnr)
  end,
  capabilities = LspGetDefaultConfig()["capabilities"],
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

null_ls.register(null_ls.builtins.diagnostics.phpstan.with {
  command = "./vendor/bin/phpstan",
  condition = function(utils)
      return utils.root_has_file "phpstan.neon"
  end,
})
