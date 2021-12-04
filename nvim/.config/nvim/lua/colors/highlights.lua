local cmd = vim.cmd

local colors = require("colors").get()
local hl = require "colors.hl"
local Color = require "colors.color".Color
local hi, hi_link, hi_clear = hl.hi, hl.hi_link, hl.hi_clear

local black = colors.black
local black2 = colors.black2
local blue = colors.blue
local darker_black = colors.darker_black
local folder_bg = colors.folder_bg
local green = colors.green
local grey = colors.grey
local grey_fg = colors.grey_fg
local line = colors.line
local nord_blue = colors.nord_blue
local one_bg = colors.one_bg
local one_bg2 = colors.one_bg2
local pmenu_bg = colors.pmenu_bg
local purple = colors.purple
local dark_purple = colors.dark_purple
local red = colors.red
local white = colors.white
local yellow = colors.yellow
local one_bg3 = colors.one_bg3

local ui = {
    italic_comments = true,
    transparency = false,
}

-- Define bg color
-- @param group Group
-- @param color Color
local function bg(group, color)
    cmd("hi " .. group .. " guibg=" .. color)
end

-- Define fg color
-- @param group Group
-- @param color Color
local function fg(group, color)
    cmd("hi " .. group .. " guifg=" .. color)
end

-- Define bg and fg color
-- @param group Group
-- @param fgcol Fg Color
-- @param bgcol Bg Color
local function fg_bg(group, fgcol, bgcol)
    cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

-- Comments
if ui.italic_comments then
    fg("Comment", grey_fg .. " gui=italic")
else
    fg("Comment", grey_fg)
end

local function generate_diff_colors()
    local bg = vim.o.bg
    local hl_bg_normal = hl.get_bg "Normal" or (bg == "dark" and "#111111" or "#eeeeee")

    local bg_normal = Color.from_hex(hl_bg_normal)

    local base_add = Color.from_hex(hl.get_fg "diffAdded" or "#b7ce42")
    local base_del = Color.from_hex(hl.get_fg "diffRemoved" or "#e84f4f")
    local base_mod = Color.from_hex(hl.get_fg "diffChanged" or "#51afef")

    local bg_add = base_add:blend(bg_normal, 0.85):mod_saturation(0.05)
    local bg_del = base_del:blend(bg_normal, 0.85):mod_saturation(0.05)
    local bg_mod = base_mod:blend(bg_normal, 0.85):mod_saturation(0.05)
    local bg_mod_text = base_mod:blend(bg_normal, 0.7):mod_saturation(0.05)

    hi("DiffAdd", { bg = bg_add:to_css(), fg = "NONE", gui = "NONE" })
    hi("DiffDelete", { bg = bg_del:to_css(), fg = "NONE", gui = "NONE" })
    hi("DiffChange", { bg = bg_mod:to_css(), fg = "NONE", gui = "NONE" })
    hi("DiffText", { bg = bg_mod_text:to_css(), fg = "NONE", gui = "NONE" })
end

-- Disable cusror line
-- cmd "hi clear CursorLine"
-- Line number
fg("cursorlinenr", white)

-- same it bg, so it doesn't appear
fg("EndOfBuffer", black)

-- For floating windows
fg("FloatBorder", blue)
bg("NormalFloat", one_bg)

-- Pmenu
bg("Pmenu", one_bg)
bg("PmenuSbar", one_bg2)
bg("PmenuSel", pmenu_bg)
bg("PmenuThumb", nord_blue)
fg("CmpItemAbbr", white)
fg("CmpItemAbbrMatch", white)
fg("CmpItemKind", white)
fg("CmpItemMenu", white)

-- misc

-- inactive statuslines as thin lines
fg("StatusLineNC", one_bg3 .. " gui=underline")

fg("LineNr", grey)
fg("NvimInternalError", red)
fg("VertSplit", one_bg2)

if ui.transparency then
    bg("Normal", "NONE")
    bg("Folded", "NONE")
    fg("Folded", "NONE")
    fg("Comment", grey)
end

-- [[ Plugin Highlights

-- Dashboard
fg("DashboardCenter", grey_fg)
fg("DashboardFooter", grey_fg)
fg("DashboardHeader", grey_fg)
fg("DashboardShortcut", grey_fg)

-- Git signs
-- generate_diff_colors()
-- fg_bg("DiffAdd", "NONE", green)
-- fg_bg("DiffAdded", "NONE", green)
-- fg_bg("DiffChange", "NONE", grey_fg)
-- fg_bg("DiffModified", "NONE", yellow)
-- fg_bg("DiffDelete", "NONE", red)
-- fg_bg("DiffRemoved", "NONE", red)

-- Indent blankline plugin
fg("IndentBlanklineChar", line)

-- ]]

-- [[ LspDiagnostics

-- Errors
fg("LspDiagnosticsSignError", red)
fg("LspDiagnosticsSignWarning", yellow)
fg("LspDiagnosticsVirtualTextError", red)
fg("LspDiagnosticsVirtualTextWarning", yellow)

-- Info
fg("LspDiagnosticsSignInformation", green)
fg("LspDiagnosticsVirtualTextInformation", green)

-- Hints
fg("LspDiagnosticsSignHint", purple)
fg("LspDiagnosticsVirtualTextHint", purple)

-- ]]

-- NvimTree
fg("NvimTreeEmptyFolderName", blue)
fg("NvimTreeEndOfBuffer", darker_black)
fg("NvimTreeFolderIcon", folder_bg)
fg("NvimTreeFolderName", folder_bg)
fg("NvimTreeGitDirty", red)
fg("NvimTreeIndentMarker", one_bg2)
bg("NvimTreeNormal", darker_black)
bg("NvimTreeNormalNC", darker_black)
fg("NvimTreeOpenedFolderName", blue)
fg("NvimTreeRootFolder", red .. " gui=underline") -- enable underline for root folder in nvim tree
fg_bg("NvimTreeStatuslineNc", darker_black, darker_black)
fg("NvimTreeVertSplit", darker_black)
bg("NvimTreeVertSplit", darker_black)
fg_bg("NvimTreeWindowPicker", red, black2)

-- Disable some highlight in nvim tree if transparency enabled
if ui.transparency then
    bg("NvimTreeNormal", "NONE")
    bg("NvimTreeStatusLineNC", "NONE")
    bg("NvimTreeVertSplit", "NONE")
    fg("NvimTreeVertSplit", grey)
end

-- Telescope
fg("TelescopeBorder", one_bg)
fg_bg("TelescopePreviewTitle", green, one_bg)
fg_bg("TelescopePromptTitle", blue, one_bg)
fg_bg("TelescopeResultsTitle", red, one_bg)

-- Nvim-cmp
fg("CmpItemAbbrDeprecated", grey_fg)
fg("CmpItemAbbrMatch", blue)
fg("CmpItemAbbrMatchFuzzy", blue)
fg("CmpItemKindVariable", nord_blue)
fg("CmpItemKindInterface", nord_blue)
fg("CmpItemKindText", nord_blue)
fg("CmpItemKindFunction", purple)
fg("CmpItemKindMethod", purple)
fg("CmpItemKindKeyword", white)
fg("CmpItemKindProperty", white)
fg("CmpItemKindUnit", white)
