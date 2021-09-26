return {
    plugins = function(use)
        use "windwp/nvim-autopairs"
        use "hrsh7th/nvim-cmp"
        use "hrsh7th/vim-vsnip"
        use "hrsh7th/vim-vsnip-integ"
        use "rafamadriz/friendly-snippets"
        use "hrsh7th/cmp-buffer"
        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-nvim-lua"
        use "hrsh7th/cmp-vsnip"
    end,

    setup = function()
        local lspkind = require "lspkind"
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
                { name = "buffer" },
                { name = "path" },
                { name = "nvim_lua" },
                { name = "orgmode" },
            },
            formatting = {
                format = function(entry, vim_item)
                    -- fancy icons ad a name of kind
                    vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind
                    -- set a name for each source
                    vim_item.menu = ({
                        buffer = "[Buffer]",
                        nvim_lsp = "[LSP]",
                        luasnip = "[LuaSnip]",
                        nvim_lua = "[Lua]",
                        latex_symbols = "[Latex]",
                    })[entry.source.name]
                    return vim_item
                end,
            },
        }

        require("nvim-autopairs").setup {
            check_ts = true,
            enable_check_bracket_line = true,
        }

        require("nvim-autopairs.completion.cmp").setup {
            map_cr = true,
            map_complete = true,
            auto_select = true,
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
