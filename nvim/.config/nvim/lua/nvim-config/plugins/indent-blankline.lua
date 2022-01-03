return function()
  -- vim.g.indent_blankline_context_patterns = {
  --   'class', 'return', 'function', 'method', '^if', '^while', 'jsx_element',
  --   '^for', '^object', '^table', 'block', 'arguments', 'if_statement',
  --   'else_clause', 'jsx_element', 'jsx_self_closing_element',
  --   'try_statement', 'catch_clause', 'import_statement'
  -- }

  -- vim.cmd([[hi! IndentBlanklineContextChar guifg=fg]])

  require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = false,
    char = "▏",
    -- space_char = ' '
    space_char_blankline = "⠀",
    use_treesitter = true,
    show_trailing_blankline_indent = false,
    buftype_exclude = { "terminal" },
    filetype_exclude = {
      "help",
      "startify",
      "dashboard",
      "packer",
      "NeogitStatus",
      "NeogitCommitView",
      "NeogitPopup",
      "NeogitLogView",
      "NeogitCommitMessage",
      "man",
      "sagasignature",
      "sagahover",
      "lspsagafinder",
      "LspSagaCodeAction",
      "TelescopePrompt",
      "NvimTree",
      "Trouble",
      "DiffviewFiles",
      "DiffviewFileHistory",
      "Outline",
      "lspinfo",
    },
  }
end
