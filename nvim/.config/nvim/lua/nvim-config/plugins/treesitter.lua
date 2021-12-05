return function()
  require("nvim-treesitter.configs").setup {
    ensure_installed = "maintained", -- one of "all", "maintained", or a list of languages
    highlight = {
      enable = true, -- false will disable the whole extension
      disable = { "vim" }, -- list of language that will be disabled
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<CR>",
        scope_incremental = "<CR>",
        node_incremental = "<TAB>",
        node_decremental = "<S-TAB>",
      },
    },
    textobjects = {
      select = {
        enable = true,

        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,

        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ["<leader>a"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>A"] = "@parameter.inner",
        },
      },
      autotag = {
        enable = true,
      },
      context_commentstring = {
        enable = true,
      },
    },
  }
end
