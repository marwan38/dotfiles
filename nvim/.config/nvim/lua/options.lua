return {
    setup = function()
        vim.g.mapleader = " "

        local opt = vim.opt

        opt.cursorline = true
        opt.number = true
        opt.numberwidth = 2
        opt.relativenumber = true
        opt.termguicolors = true
        opt.laststatus = 2
        opt.showcmd = true
        opt.autoindent = true
        opt.smartindent = true
        opt.cindent = true
        opt.wildmenu = true
        opt.wildmode = "longest:full,full"
        opt.linebreak = true
        opt.autoread = true
        opt.expandtab = true
        opt.showmatch = true
        opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
        opt.completeopt = "menu,menuone,noselect"
        opt.complete = ".,w,b,u,t,k"
        opt.pumheight = 15
        opt.scrolloff = 4
        opt.sidescrolloff = 10
        opt.display = "lastline,msgsep"
        opt.incsearch = true
        opt.hlsearch = true
        opt.wildignorecase = true
        opt.ignorecase = true
        opt.smartcase = true
        opt.mouse = "a"
        opt.hidden = true
        opt.ttimeout = true
        opt.timeoutlen = 300
        opt.ttimeoutlen = 50
        opt.wrap = false
        opt.conceallevel = 2
        opt.title = true
        opt.undofile = true
        opt.signcolumn = "yes"
        opt.lazyredraw = true
        opt.clipboard = "unnamedplus"
        opt.splitbelow = true -- open help menu at the bottom
        opt.splitright = true -- open help menu at the bottom
        opt.updatetime = 300

        opt.foldmethod = "expr"
        opt.foldexpr = "nvim_treesitter#foldexpr()"
        opt.foldlevel = 99
    end,
}
