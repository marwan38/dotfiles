return {
    plugins = function(use)
        use { "Mofiqul/dracula.nvim" }
        use { "sainnhe/gruvbox-material" }
        use { "rmehri01/onenord.nvim" }
        use "monsonjeremy/onedark.nvim"
        use "kyazdani42/nvim-web-devicons"
        use "famiu/feline.nvim"
        use "lukas-reineke/indent-blankline.nvim"
        use "folke/which-key.nvim"
        use "akinsho/nvim-bufferline.lua"
        use "ojroques/nvim-bufdel"
        use "kevinhwang91/nvim-bqf"
        use "norcalli/nvim-colorizer.lua"
        use "nvim-lua/lsp-status.nvim"
    end,

    setup = function()
        require("bqf").setup {}
        require("colorizer").setup()

        require("bufdel").setup {
            next = "alternate",
            quit = false,
        }

        require("which-key").setup {}

        require("lsp-status").register_progress()

        require "plugins.configs.feline"

        require("indent_blankline").setup {
            indentLine_enabled = 1,
            char = "▏",

            filetype_exclude = {
                "help",
                "terminal",
                "dashboard",
                "packer",
                "lspinfo",
                "TelescopePrompt",

                "TelescopeResults",
            },
            buftype_exclude = { "terminal" },
            show_trailing_blankline_indent = true,
            show_first_indent_level = false,
        }

        require "plugins.configs.bufferline"
    end,

    bindings = function(map)
        local wk = require "which-key"

        wk.register {
            ["<leader>b"] = {
                name = "+Buffer",
                d = { "<cmd>BufDel<cr>", "Close current" },
                D = { "<cmd>BufDel!<cr>", "Force close current" },
                C = { "<cmd>bufdo :Bdelete<cr>", "Close all" },
                c = { "<cmd>BufferLineCloseRight<cr><cmd>BufferLineCloseLeft<cr>", "Close all but current" },
                L = { "<cmd>BufferLineCloseLeft<cr>", "Close buffers left" },
                R = { "<cmd>BufferLineCloseRight<cr>", "Close buffers right" },
                p = { "<cmd>BufferLinePick<cr>", "Pick buffer" },
                od = { "<cmd>BufferLineSortByDirectory<CR>", "Sort by directory" },
                oe = { "<cmd>BufferLineSortByExtension<CR>", "Sort by extension" },
            },
        }

        local opts = { noremap = true, silent = true }

        map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
        map("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
        map("n", "<A-<>", ":BufferLineMovePrev<CR>", opts)
        map("n", "<A->>", " :BufferLineMoveNext<CR>", opts)
        map("n", "<A-q>", ":BufDel<CR>", opts)
    end,
}
