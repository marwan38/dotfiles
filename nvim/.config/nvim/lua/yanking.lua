return {
    plugins = function(use)
        use "svermeulen/vim-cutlass"
        -- use "svermeulen/vim-yoink"
    end,

    setup = function()
        vim.cmd [[
    autocmd ColorScheme * highlight YankedText guibg=#FFFFFF
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup='Search', timeout=300}
    ]]

        -- vim.g.yoinkIncludeDeleteOperations = 1
    end,

    bindings = function(map)
        local opts = { noremap = true }

        -- m to "cut" (original delete operation)
        map("n", "m", "d", opts)
        map("x", "m", "d", opts)
        map("n", "mm", "dd", opts)
        map("n", "M", "D", opts)
        map("v", "M", "D", opts)

        -- gm for marks
        map("n", "gm", "m", opts)

        --         map("n", "<M-p>", "<plug>(YoinkPostPasteSwapBack)", {})
        --         map("n", "<M-P>", "<plug>(YoinkPostPasteSwapForward)", {})

        --         map("n", "p", "<plug>(YoinkPaste_p)", {})
        --         map("n", "P", "<Plug>(YoinkPaste_P)", {})

        --         map("n", "y", "<Plug>(YoinkYankPreserveCursorPosition)", {})
        --         map("x", "y", "<Plug>(YoinkYankPreserveCursorPosition)", {})
    end,
}
