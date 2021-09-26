return {
  config = {
    theme = "chadracula",
    italic_comments = true,
    transparency = false,
    available_schemes = {
      "aquarium",
      "blossom",
      "chadracula",
      "everforest",
      "gruvbox",
      "gruvchad",
      "javacafe",
      "jellybeans",
      "lfgruv",
      "mountain",
      "nord",
      "one-light",
      "onedark",
      "onejelly",
      "onenord",
      "tokyonight",
      "tomorrow-night",
      "uwu",
    },
  },

  plugins = function(use)
    use {
      "marwan38/nvim-base16.lua",
      -- after = "packer.nvim",
      config = function()
        -- require("theme").init()
      end,
    }
  end,

  init = function(theme)
    if not theme then
      theme = require("theme").config.theme
    end
    -- set the global theme, used at various places like theme switcher, highlights
    vim.g.nvchad_theme = theme

    local present, base16 = pcall(require, "base16")
    if present then
      base16(base16.themes(theme), true)

      require "theme.highlights"
    else
      return false
    end
  end,

  bindings = function(map)
    -- map("n", "<leader>th", ":lua require('nvchad').toggle_theme(require('theme').config.available_schemes)<CR>", {})
  end,
  -- returns a table of colors for givem or current theme
  get = function(theme)
    if not theme then
      theme = vim.g.nvchad_theme
    end

    return require("hl_themes." .. theme)
  end,
}
