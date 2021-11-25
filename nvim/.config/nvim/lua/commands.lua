local u = require "utils"

u.command(
    "WipeReg",
    [[for r in split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')| silent! call setreg(r, []) | endfor]]
)
u.augroup("WipeRegisters", "VimEnter", "WipeReg")

return {}
