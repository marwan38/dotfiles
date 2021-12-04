vim.fn.sign_define("DapBreakpoint", {
  text = "",
  texthl = "LspDiagnosticsSignError",
  linehl = "",
  numhl = "",
})

local dap = require "dap"
-- dap.defaults.fallback.terminal_win_cmd = "50vsplit new"

-- PHP
dap.adapters.php = {
  type = "executable",
  command = "node",
  args = { "/home/marwan38/programs/vscode-php-debug/out/phpDebug.js" },
}
dap.configurations.php = {
  {
    name = "Listen for XDebug",
    type = "php",
    request = "launch",
    port = 9003,
    pathMappings = {
      ["/srv/archipro/www/marwan/"] = "${workspaceFolder}/",
    },
    stopOnEntry = false,
    ignore = {
      "**/silverstripe-cache/**/*.php",
      "**/vendor/**/*.php",
    },
    hostname = "0.0.0.0",
  },
  {
    name = "Launch currently open script",
    type = "php",
    request = "launch",
    -- program = "${file}",
    cwd = "${workspaceRoot}",
    port = 9003,
  },
}

require("dapui").setup {
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",

    edit = "e",
    repl = "r",
  },
  sidebar = {
    -- You can change the order of elements in the sidebar
    elements = {
      -- Provide as ID strings or tables with "id" and "size" keys
      {
        id = "scopes",
        size = 0.25, -- Can be float or integer > 1
      },

      { id = "breakpoints", size = 0.25 },
      { id = "stacks", size = 0.25 },
      { id = "watches", size = 00.25 },
    },
    size = 40,

    position = "left", -- Can be "left", "right", "top", "bottom"
  },
  tray = {
    elements = { "repl" },
    size = 10,
    position = "bottom", -- Can be "left", "right", "top", "bottom"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.

    max_width = nil, -- Floats will be treated as percentage of your screen.
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
}
