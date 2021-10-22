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
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                ["<C-n>"] = cmp.mapping.select_next_item(),
                ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.close(),
                ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
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
                    },
                },
            },
            experimental = {
                native_menu = false,
                ghost_text = true,
            },
        }

        require("nvim-autopairs").setup {
            check_ts = true,
        }

        require("nvim-autopairs.completion.cmp").setup {
            map_cr = true, --  map <CR> on insert mode
            map_complete = false, -- it will auto insert `(` (map_char) after select function or method item
            auto_select = true, -- automatically select the first item
            insert = false, -- use insert confirm behavior instead of replace

            map_char = { -- modifies the function or method delimiter by filetypes
                all = "(",
                tex = "{",
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
