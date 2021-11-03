local M = {}

-- if theme given, load given theme if given, otherwise nvchad_theme
M.init = function(theme)
    if not theme then
        theme = __theme
    end

    local base16 = require "colors.base16"
    -- first load the base16 theme
    base16(base16.themes(theme), true)

    -- unload to force reload
    package.loaded["colors.highlights" or false] = nil
    -- then load the highlights
    require "colors.highlights"
end

-- returns a table of colors for givem or current theme
M.get = function(theme)
    if not theme then
        theme = __theme
    end

    return require("colors.hl_themes." .. theme)
end

return M
