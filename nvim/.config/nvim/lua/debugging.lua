return {
    plugins = function(use)
        use "mfussenegger/nvim-dap"
        use "rcarriga/nvim-dap-ui"
        use "Pocco81/DAPInstall.nvim"
        use "theHamsta/nvim-dap-virtual-text"
    end,

    setup = function()
        require("dap-install").setup {}
        require("dapui").setup {
            icons = { expanded = "▾", collapsed = "▸" },
            mappings = {
                -- Use a table to apply multiple mappings
                expand = { "<CR>", "<2-LeftMouse>" },
                open = "o",
                remove = "d",

                edit = "e",
                repl = "r",
            },

            sidebar = {
                open_on_start = true,
                -- You can change the order of elements in the sidebar
                elements = {
                    -- Provide as ID strings or tables with "id" and "size" keys
                    {

                        id = "scopes",
                        size = 0.25, -- Can be float or integer > 1
                    },
                    { id = "breakpoints", size = 0.25 },

                    { id = "stacks", size = 0.25 },
                    { id = "watches", size = 00.25 },
                },
                size = 40,
                position = "left", -- Can be "left", "right", "top", "bottom"
            },
            tray = {
                open_on_start = true,

                elements = { "repl" },
                size = 10,
                position = "bottom", -- Can be "left", "right", "top", "bottom"
            },
            floating = {
                max_height = nil, -- These can be integers or a float between 0 and 1.
                max_width = nil, -- Floats will be treated as percentage of your screen.
                mappings = {
                    close = { "q", "<Esc>" },
                },
            },
            windows = { indent = 1 },
        }
    end,

    bindings = function()
        local dap = require "dap"

        vim.fn.sign_define("DapBreakpoint", {
            text = "",
            texthl = "LspDiagnosticsSignError",
            linehl = "",
            numhl = "",
        })
        dap.defaults.fallback.terminal_win_cmd = "50vsplit new"

        local wk = require "which-key"

        wk.register {
            ["<leader>d"] = {
                name = "Debug",
                t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
                b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
                c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },

                C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
                d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
                g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
                i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
                o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
                u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
                p = { "<cmd>lua require'dap'.pause.toggle()<cr>", "Pause" },
                r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },

                s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
                q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
            },
        }
    end,
}
