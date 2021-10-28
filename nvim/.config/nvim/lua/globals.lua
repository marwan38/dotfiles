-- Source: https://github.com/simrat39/dotfiles/blob/master/.config/nvim/lua/globals.lua
P = function(v)
    print(vim.inspect(v))
    return v
end

RELOAD = function(...)
    return require("plenary.reload").reload_module(...)
end

R = function(name)
    RELOAD(name)
    return require(name)
end
