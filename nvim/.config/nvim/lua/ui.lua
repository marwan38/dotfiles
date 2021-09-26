return {
    plugins = function(use)
        use { "Mofiqul/dracula.nvim" }
        use { "sainnhe/gruvbox-material" }
        use "shadmansaleh/lualine.nvim"
        use "kyazdani42/nvim-web-devicons"
        use "lukas-reineke/indent-blankline.nvim"
        use "folke/which-key.nvim"
        use "akinsho/nvim-bufferline.lua"
        use "ojroques/nvim-bufdel"
        use "kevinhwang91/nvim-bqf"
    end,

    setup = function()
        require("bqf").setup {}

        require("bufdel").setup {
            next = "alternate",
            quit = false,
        }

        require("which-key").setup {}

        vim.cmd [[
            let g:gruvbox_material_background = 'hard'
            let g:gruvbox_material_diagnostic_virtual_text = 'colored'
            let g:gruvbox_material_enable_italic = 1
            colorscheme gruvbox-material
        ]]

        require("lualine").setup {
            options = {
                theme = "auto",
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            },
        }

        require("indent_blankline").setup {
            char = "▏",
            space_char_blankline = " ",
            buftype_exclude = { "terminal" },
            filetype_exclude = { "dashboard" },
        }
        -- fix https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
        vim.opt.colorcolumn = "99999"

        require("bufferline").setup {
            options = {
                numbers = "ordinal",
                -- close_command = function(bufnum)
                --     require("bufdelete").bufdelete(bufnum, true)
                -- end,
                right_mouse_command = nil,
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level)
                    return "(" .. count .. ")"
                end,
                offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "left" } },
                custom_filter = function(buf_number)
                    if vim.bo[buf_number].filetype == "" then
                        return false
                    end

                    return true
                end,
            },
        }

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

        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }

        map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
        map("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
        map("n", "<A-<>", ":BufferLineMovePrev<CR>", opts)
        map("n", "<A->>", " :BufferLineMoveNext<CR>", opts)
        map("n", "<A-q>", ":Bdelete<CR>", opts)
    end,
}
