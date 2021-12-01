return {
    plugins = function(use)
        use "hrsh7th/nvim-cmp"
        use "hrsh7th/cmp-buffer"
        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-nvim-lua"
        use { "hrsh7th/vim-vsnip-integ", requires = { "hrsh7th/vim-vsnip" } }
        use {
            "hrsh7th/cmp-vsnip",
            after = "nvim-cmp",
            requires = {
                "hrsh7th/vim-vsnip",

                {
                    "rafamadriz/friendly-snippets",
                    after = "cmp-vsnip",
                },
            },
        }
        use "windwp/nvim-autopairs"
    end,

    setup = function()
        local cmp = require "cmp"
        cmp.setup {
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end,
            },

            mapping = {
                ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
                ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
                ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
                ["<C-e>"] = cmp.mapping {
                    i = cmp.mapping.abort(),
                    c = cmp.mapping.close(),
                },
                ["<C-n>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
                ["<C-p>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
                ["<CR>"] = cmp.mapping.confirm {
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true,
                },
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "vsnip" },
                { name = "buffer", keyword_length = 3 },
                { name = "path" },
                { name = "nvim_lua" },
                { name = "orgmode" },
            },
            formatting = {
                format = require("lspkind").cmp_format {
                    with_text = true,
                    menu = {
                        nvim_lsp = "[LSP]",
                        luasnip = "[LuaSnip]",
                        vsnip = "[VSnip]",
                        path = "(Path)",
                        buffer = "[Buffer]",
                        emoji = "(Emoji)",
                        nvim_lua = "[Lua]",
                        latex_symbols = "[Latex]",
                        orgmode = "[ORG]",
                    },
                },
            },
            -- experimental = {},
        }

        require("nvim-autopairs").setup {
            check_ts = true,
            enable_check_bracket_line = false,
            ts_config = {
                lua = { "string" },
                javascript = { "template_string" },
            },
        }
    end,
    bindings = function(map)
        map("i", "<C-j>", 'vsnip#expandable() ? "<Plug>(vsnip-expand)" : "<C-j>"', { expr = true })
        map("s", "<C-j>", 'vsnip#expandable() ? "<Plug>(vsnip-expand)" : "<C-j>"', { expr = true })
        map("i", "<C-l>", 'vsnip#available(1) ? "<Plug>(vsnip-expand-or-jump)" : "<C-l>"', { expr = true })
        map("s", "<C-l>", 'vsnip#available(1) ? "<Plug>(vsnip-expand-or-jump)" : "<C-l>"', { expr = true })
        map("i", "<c-j>", 'vsnip#jumpable(1) ? "<Plug>(vsnip-jump-next)" : "<c-j>"', { expr = true })
        map("s", "<c-j>", 'vsnip#jumpable(1) ? "<Plug>(vsnip-jump-next)" : "<c-j>"', { expr = true })
        map("n", "gZ", "<Plug>(vsnip-select-text)", {})
        map("x", "gZ", "<Plug>(vsnip-select-text)", {})
        map("n", "gz", "<Plug>(vsnip-cut-text)", {})
        map("x", "gz", "<Plug>(vsnip-cut-text)", {})
    end,
}
