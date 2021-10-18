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

local function lsp_code_lens_refresh(client)
    if client.resolved_capabilities.code_lens then
        vim.api.nvim_exec(
            [[
      augroup lsp_code_lens_refresh
        autocmd! * <buffer>
        autocmd InsertLeave <buffer> lua vim.lsp.codelens.refresh()
        autocmd InsertLeave <buffer> lua vim.lsp.codelens.display()
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
        use "kosayoda/nvim-lightbulb"
    end,

    setup = function()
        require("lsp.handlers").setup()
        require("null-ls").config { debug = true }
        require("lspconfig")["null-ls"].setup {}
        vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
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
        require("lsp_signature").on_attach({
            bind = false,
            hint_enable = false,

            padding = " ",
            handler_opts = {
                border = "none",
            },
            always_trigger = false,
            auto_close_after = 10,
            toggle_key = "<M-s>",
        }, bufnr)

        -- lsp_code_lens_refresh(client)
        -- lsp_highlight_document(client)
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
