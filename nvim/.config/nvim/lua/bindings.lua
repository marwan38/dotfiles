local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

map("n", "<C-A-h>", "<CMD> vert res +1 <CR>", opts)
map("n", "<C-A-l>", "<CMD> vert res -1 <CR>", opts)
map("n", "<C-A-k>", "<CMD> res +1 <CR>", opts)
map("n", "<C-A-j>", "<CMD> res -1 <CR>", opts)

