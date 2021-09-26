local function add_lsp_buffer_keybindings(bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

    local status_ok, wk = pcall(require, "which-key")
    if not status_ok then
        return
    end
    local keys = {
        ["K"] = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Show hover" },
        ["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Goto Definition" },
        ["gD"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Goto declaration" },
        ["gr"] = { "<cmd>lua vim.lsp.buf.references()<CR>", "Goto references" },
        ["gI"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Goto Implementation" },
        ["gs"] = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "show signature help" },
        ["gp"] = { "<cmd>lua require'lsp.peek'.Peek('definition')<CR>", "Peek definition" },
        ["gl"] = {

            "<cmd>lua require'lsp.handlers'.show_line_diagnostics()<CR>",
            "Show line diagnostics",
        },
    }
    wk.register(keys, { mode = "n", buffer = bufnr, silent = true, noremap = true })
end

local function lsp_highlight_document(client)
    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec(
            [[
          hi LspReferenceRead cterm=bold ctermbg=red guibg=#353d46
          hi LspReferenceText cterm=bold ctermbg=red guibg=#353d46

          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#353d46
          augroup lsp_document_highlight
            autocmd! * <buffer>
            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
          augroup END
    ]],
            false
        )
    end
end

return {
    plugins = function(use)
        use "neovim/nvim-lspconfig"
        use "ray-x/lsp_signature.nvim"
        use "onsails/lspkind-nvim"
        use "jose-elias-alvarez/null-ls.nvim"
        use "kabouzeid/nvim-lspinstall"
    end,

    setup = function()
        require("lsp.handlers").setup()
        require("null-ls").config { debug = true }
        require("lspconfig")["null-ls"].setup {}
    end,

    bindings = function()
        local wk = require "which-key"
        wk.register({
            ["[d"] = {
                "<cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = 'single'}})<cr>",
                "Next Diagnostic",
            },
            ["]d"] = {
                "<cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {border = 'single'}})<cr>",
                "Next Diagnostic",
            },
            ["<leader>l"] = {
                name = "+LSP",
                a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
                w = {
                    "<cmd>Telescope lsp_workspace_diagnostics<cr>",
                    "Workspace Diagnostics",
                },
                f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
                i = { "<cmd>LspInfo<cr>", "Info" },
                p = {
                    name = "Peek",
                    d = { "<cmd>lua require('lsp.peek').Peek('definition')<cr>", "Definition" },
                    t = { "<cmd>lua require('lsp.peek').Peek('typeDefinition')<cr>", "Type Definition" },
                    i = { "<cmd>lua require('lsp.peek').Peek('implementation')<cr>", "Implementation" },
                },
                q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
                r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
                s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
                S = {
                    "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
                    "Workspace Symbols",
                },
            },
        }, {
            mode = "n",
        })
    end,

    on_attach = function(client, bufnr)
        require("lspkind").init {}
        require("lsp_signature").on_attach({
            debug = false, -- set to true to enable debug logging

            log_path = "debug_log_file_path", -- debug log path
            verbose = false, -- show debug line number

            bind = true, -- This is mandatory, otherwise border config won't get registered.
            -- If you want to hook lspsaga or other signature handler, pls set to false
            doc_lines = 10, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
            -- set to 0 if you DO NOT want any API comments be shown
            -- This setting only take effect in insert mode, it does not affect signature help in normal
            -- mode, 10 by default

            floating_window = false, -- show hint in a floating window, set to false for virtual text only mode

            floating_window_above_cur_line = true, -- try to place the floating above the current line when possible Note:
            -- will set to true when fully tested, set to false will use whichever side has more space
            -- this setting will be helpful if you do not want the PUM and floating win overlap
            fix_pos = false, -- set to true, the floating window will not auto-close until finish all parameters
            hint_enable = true, -- virtual hint enable
            hint_prefix = "", -- Panda for parameter
            hint_scheme = "String",
            use_lspsaga = false, -- set to true if you want to use lspsaga popup
            hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
            max_height = 12, -- max height of signature floating_window, if content is more than max_height, you can scroll down
            -- to view the hiding contents
            max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
            transpancy = 10, -- set this value if you want the floating windows to be transpant (100 fully transpant), nil to disable(default)
            handler_opts = {
                border = "single", -- double, single, shadow, none
            },

            always_trigger = false, -- sometime show signature on new line or in middle of parameter can be confusing, set it to false for #58

            auto_close_after = nil, -- autoclose signature float win after x sec, disabled if nil.
            extra_trigger_chars = {}, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
            zindex = 200, -- by default it will be on top of all floating windows, set to <= 50 send it to bottom

            padding = "", -- character to pad on left and right of signature can be ' ', or '|'  etc

            transpancy = nil, -- disabled by default, allow floating win transparent value 1~100
            shadow_blend = 36, -- if you using shadow as border use this set the opacity
            shadow_guibg = "Black", -- if you using shadow as border use this set the color e.g. 'Green' or '#121315'
            timer_interval = 200, -- default timer check interval set to lower value if you want to reduce latency
            toggle_key = nil, -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'
        }, bufnr)
        lsp_highlight_document(client)
        add_lsp_buffer_keybindings(bufnr)
    end,

    common_capabilities = function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        -- capabilities.textDocument.completion.completionItem.snippetSupport = true
        -- capabilities.textDocument.completion.completionItem.resolveSupport = {
        --     properties = {
        --         "documentation",
        --         "detail",
        --         "additionalTextEdits",
        --     },
        -- }
        capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
        return capabilities
    end,
}
