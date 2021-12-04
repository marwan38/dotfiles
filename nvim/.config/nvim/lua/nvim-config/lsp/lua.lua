local system_name
if vim.fn.has "mac" == 1 then
  system_name = "macOS"
elseif vim.fn.has "unix" == 1 then
  system_name = "Linux"
elseif vim.fn.has "win32" == 1 then
  system_name = "Windows"
else
  print "Unsupported system for sumneko"
end

local lua_path = {
  "lua/?.lua",
  "lua/?/init.lua",
}

for _, v in ipairs(vim.split(package.path, ";")) do
  table.insert(lua_path, v)
end

local lua_lib = {}

local function lua_add_lib(lib)
  for _, p in pairs(vim.fn.expand(lib, false, true)) do
    p = vim.loop.fs_realpath(p)
    lua_lib[p] = true
  end
end

lua_add_lib "$VIMRUNTIME"
lua_add_lib(vim.fn.stdpath "data" .. "/site/pack/packer/start/plenary.nvim")

local sumneko_root_path = vim.fn.getenv "HOME" .. "/git/lua-language-server"
local sumneko_binary = sumneko_root_path .. "/bin/" .. system_name .. "/lua-language-server"

local config = vim.tbl_deep_extend("force", LspGetDefaultConfig(), {
  cmd = {
    sumneko_binary,
  },
  filetypes = { "lua" },
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
        path = lua_path,
        fileEncoding = "utf8",
        unicodeName = true,
      },
      diagnostics = {
        globals = { "vim", "jit", "bit", "Config" },
      },
      workspace = {
        library = lua_lib,
        maxPreload = 2000,
        preloadFileSize = 50000,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

require("lspconfig").sumneko_lua.setup(config)
local null_ls = require "null-ls"
null_ls.register(null_ls.builtins.formatting.stylua)
