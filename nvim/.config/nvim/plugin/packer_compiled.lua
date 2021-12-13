-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/marwan38/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/marwan38/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/marwan38/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/marwan38/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/marwan38/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nﬂ\3\0\1\a\0\22\00066\1\0\0009\1\1\0019\1\2\1\a\1\3\0X\0010Ä6\1\4\0'\3\5\0B\1\2\0029\2\6\0009\3\6\0019\3\a\3\5\2\3\0X\2\2Ä'\2\b\0X\3\1Ä'\2\t\0+\3\0\0009\4\6\0009\5\6\0019\5\n\5\5\4\5\0X\4\aÄ6\4\4\0'\6\v\0B\4\2\0029\4\f\4B\4\1\2\18\3\4\0X\4\16Ä9\4\r\0009\5\r\0019\5\14\5\4\4\5\0X\4\5Ä9\4\r\0009\5\r\0019\5\15\5\5\4\5\0X\4\6Ä6\4\4\0'\6\v\0B\4\2\0029\4\16\4B\4\1\2\18\3\4\0006\4\4\0'\6\17\0B\4\2\0029\4\18\0045\6\19\0=\2\20\6=\3\21\6D\4\2\0K\0\1\0\rlocation\bkey\1\0\0\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\16__multiline\14__default\tline\nctype\18Comment.utils\frequire\20typescriptreact\rfiletype\abo\bvimN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  ["Spacegray.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/Spacegray.vim",
    url = "https://github.com/ajh17/Spacegray.vim"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-vsnip"] = {
    after = { "friendly-snippets" },
    after_files = { "/home/marwan38/.local/share/nvim/site/pack/packer/opt/cmp-vsnip/after/plugin/cmp_vsnip.vim" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\nˇ\r\0\0\n\0M\0Â\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0004\1\0\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0005\6\v\0=\6\f\5=\5\r\0045\5\14\0004\6\0\0=\6\15\0054\6\0\0=\6\16\5=\5\17\0044\5\0\0=\5\18\0045\5\19\0005\6\21\0\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6#\0055\6%\0\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t$\0B\a\2\2=\a'\6\18\a\0\0'\t(\0B\a\2\2=\a)\6\18\a\0\0'\t(\0B\a\2\2=\a*\6\18\a\0\0'\t+\0B\a\2\2=\a,\6\18\a\0\0'\t-\0B\a\2\2=\a.\6\18\a\0\0'\t-\0B\a\2\2=\a/\6\18\a\0\0'\t0\0B\a\2\2=\a1\6\18\a\0\0'\t0\0B\a\2\2=\a2\6\18\a\0\0'\t3\0B\a\2\2=\a4\6\18\a\0\0'\t5\0B\a\2\2=\a6\6\18\a\0\0'\t7\0B\a\2\2=\a8\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6\r\0055\6:\0\18\a\0\0'\t9\0B\a\2\2=\a;\6\18\a\0\0'\t<\0B\a\2\2=\a=\6\18\a\0\0'\t>\0B\a\2\2=\a?\6\18\a\0\0'\t@\0B\a\2\2=\aA\6\18\a\0\0'\tB\0B\a\2\2=\aC\6\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t$\0B\a\2\2=\a'\6\18\a\0\0'\t(\0B\a\2\2=\a)\6\18\a\0\0'\t(\0B\a\2\2=\a*\6\18\a\0\0'\t+\0B\a\2\2=\a,\6\18\a\0\0'\t-\0B\a\2\2=\a.\6\18\a\0\0'\t-\0B\a\2\2=\a/\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6D\0055\6F\0\18\a\0\0'\tE\0B\a\2\2=\a\22\6\18\a\0\0'\tG\0B\a\2\2=\aH\6=\6I\5=\5J\4B\2\2\0016\2K\0009\2L\2=\1\3\2K\0\1\0\vConfig\a_G\17key_bindings\17option_panel\6q\nclose\1\0\0\vselect\23file_history_panel\azM\20close_all_folds\azR\19open_all_folds\6y\14copy_hash\f<C-A-d>\21open_in_diffview\ag!\1\0\0\foptions\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6s\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\17select_entry\t<cr>\16focus_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<C-w>gf\18goto_file_tab\15<C-w><C-f>\20goto_file_split\agf\19goto_file_edit\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\15file_panel\17tree_options\1\0\2\17flatten_dirs\2\20folder_statuses\16only_folded\1\0\4\nwidth\3#\vheight\3\n\18listing_style\ttree\rposition\tleft\nsigns\1\0\2\16fold_closed\bÔë†\14fold_open\bÔëº\nicons\1\0\2\16folder_open\bÓóæ\18folder_closed\bÓóø\1\0\3\14use_icons\2\21enhanced_diff_hl\2\18diff_binaries\1\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["doom-one.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/doom-one.nvim",
    url = "https://github.com/NTBBloodbath/doom-one.nvim"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  everforest = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["friendly-snippets"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\nÉ\4\0\0\3\1'\0^5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\0\1=\1\3\0-\1\0\0009\1\0\1=\1\4\0-\1\0\0009\1\0\1=\1\5\0-\1\0\0009\1\0\1=\1\6\0-\1\0\0009\1\0\1=\1\a\0-\1\0\0009\1\0\1=\1\b\0-\1\0\0009\1\0\1=\1\t\0-\1\0\0009\1\n\1=\1\v\0-\1\0\0009\1\n\1=\1\f\0-\1\0\0009\1\n\1=\1\r\0-\1\0\0009\1\n\1=\1\14\0-\1\0\0009\1\n\1=\1\15\0-\1\0\0009\1\n\1=\1\16\0-\1\0\0009\1\17\1=\1\18\0-\1\0\0009\1\17\1=\1\19\0-\1\0\0009\1\17\1=\1\20\0-\1\0\0009\1\21\1=\1\22\0-\1\0\0009\1\21\1=\1\23\0-\1\0\0009\1\21\1=\1\24\0-\1\0\0009\1\21\1=\1\25\0-\1\0\0009\1\26\1=\1\27\0-\1\0\0009\1\26\1=\1\28\0-\1\0\0009\1\26\1=\1\29\0-\1\0\0009\1\30\1=\1\31\0-\1\0\0009\1\30\1=\1 \0-\1\0\0009\1\30\1=\1!\0-\1\0\0009\1\30\1=\1\"\0-\1\0\0009\1\26\1=\1#\0006\1$\0009\1%\0019\1&\1B\1\1\0028\1\1\0L\1\2\0\5Ä\tmode\afn\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\vorange\aRx\aRv\aRc\6R\bred\aix\aic\6i\ngreen\6\19\6S\6s\6\22\6V\6v\fmagenta\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\6n\1\0\0\tbluex\0\1\a\0\4\0\0146\1\0\0006\3\1\0'\4\2\0\18\5\0\0&\4\5\4B\1\3\3\15\0\1\0X\3\1ÄL\2\2\0006\3\1\0'\5\3\0\18\6\0\0&\5\6\5D\3\2\0\25galaxyline.provider_\26galaxyline.providers.\frequire\npcall8\0\0\3\1\2\0\v'\0\0\0\21\1\0\0-\2\0\0\1\1\2\0X\1\5ÄU\1\4Ä\18\1\0\0'\2\1\0&\0\2\1X\1˜L\0\2\0\0¿\6 \5m\1\1\5\1\b\0\f5\1\6\0005\2\1\0003\3\0\0=\3\2\0025\3\3\0-\4\0\0009\4\4\4>\4\2\3=\3\5\2=\2\a\0012\0\0ÄL\1\2\0\5Ä\18FillerSection\1\0\0\14highlight\abg\1\2\0\0\tNONE\rprovider\1\0\0\0T\0\0\3\1\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2-\1\0\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\0¿\23nvim_win_get_width\bapi\bvim\20\1\1\2\0\1\0\0033\1\0\0002\0\0ÄL\1\2\0\0`\0\0\3\1\3\0\b6\0\0\0'\2\1\0B\0\2\2B\0\1\1-\0\0\0009\0\2\0B\0\1\1K\0\1\0\2¿\20load_galaxyline#nvim-config.plugins.galaxyline\frequire)\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\2¿\20load_galaxyline\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä ¥\3\0\0\6\1\a\0\0165\0\0\0006\1\1\0009\1\2\1'\3\3\0-\4\0\0B\4\1\2&\3\4\3B\1\2\0016\1\1\0009\1\4\0019\1\5\1B\1\1\0028\1\1\0'\2\6\0&\1\2\1L\1\2\0\b¿\6 \tmode\afn\27hi GalaxyViMode guifg=\bcmd\bvim\1\0\29\6\19\17SELECT BLOCK\6v\vVISUAL\6n\vNORMAL\6!\nSHELL\6R\fREPLACE\ace\14NORMAL EX\6c\fCOMMAND\6r\vPROMPT\6t\rTERMINAL\6i\vINSERT\aix\15COMPLETION\aic\15COMPLETION\6V\16VISUAL LINE\ar?\fCONFIRM\arm\vPROMPT\6\22\17VISUAL BLOCK\acv\aEX\aRx\fREPLACE\aRv\fREPLACE\aRc\fREPLACE\6s\vSELECT\6S\16SELECT LINE\bniV\vNORMAL\bniR\vNORMAL\bniI\vNORMAL\bno\22\vNORMAL\bnoV\vNORMAL\bnov\vNORMAL\ano\vNORMAL«\2\0\0\b\1\n\3=6\0\0\0006\2\1\0009\2\2\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\21\1\0\0\26\1\0\1\b\1\1\0X\1\nÄ-\1\0\0009\1\5\1\18\3\0\0\21\4\0\0\21\5\0\0\26\5\0\5\28\5\0\5 \4\5\4B\1\3\2\18\0\1\0006\1\0\0006\3\1\0009\3\2\0039\3\6\3'\5\4\0B\3\2\0A\1\0\2\21\2\1\0\26\2\0\2\b\2\1\0X\2\nÄ-\2\0\0009\2\a\2\18\4\1\0\21\5\1\0\21\6\1\0\26\6\0\6\28\6\0\6 \5\6\5B\2\3\2\18\1\2\0\18\2\0\0'\3\b\0\18\4\1\0&\2\4\2\21\3\2\0\26\3\2\3\b\3\1\0X\3\nÄ-\3\0\0009\3\t\3\18\5\2\0\21\6\2\0\21\a\2\0\26\a\2\a\28\a\2\a \6\a\6B\3\3\2\18\2\3\0L\2\2\0\0¿\19str_center_pad\6:\18str_right_pad\bcol\17str_left_pad\6.\tline\afn\bvim\rtostring\4\0\bx\0\0\a\0\t\1\0206\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\2\1'\3\4\0B\1\2\0026\2\5\0009\2\6\2#\4\1\0\24\4\0\4B\2\2\3'\4\a\0\18\5\2\0'\6\b\0&\4\6\4L\4\2\0\a% \6 \tmodf\tmath\6$\6.\tline\afn\bvim»\1;\0\0\4\0\5\0\b'\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0B\1\2\2&\0\1\0L\0\2\0\6$\tline\afn\bvim\n ÓÇ° x\0\0\5\0\6\0\0176\0\0\0009\0\1\0006\2\0\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\2\21\0\0\0)\1\0\0\1\1\0\0X\0\4Ä6\0\0\0009\0\4\0009\0\5\0L\0\2\0K\0\1\0\rfiletype\abo\20buf_get_clients\blsp\rtbl_keys\bvim…\1\0\0\6\0\t\0!5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2Ä+\1\1\0L\1\2\0006\1\1\0009\1\4\0019\1\5\1)\3\0\0B\1\2\2)\2x\0\1\2\1\0X\1\fÄ6\1\1\0009\1\6\0016\3\1\0009\3\a\0039\3\b\3)\5\0\0B\3\2\0A\1\0\2\21\1\1\0)\2\0\0\0\2\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\20buf_get_clients\blsp\rtbl_keys\rwinwidth\afn\rfiletype\abo\bvim\1\0\1\5\2Ö\1\0\0\2\0\a\0\0196\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\aÄ'\0\3\0006\1\0\0009\1\1\0019\1\4\1&\0\1\0L\0\2\0X\0\6Ä'\0\5\0006\1\0\0009\1\1\0019\1\6\1&\0\1\0L\0\2\0K\0\1\0\ftabstop\nTABS \15shiftwidth\fSPACES \14expandtab\abo\bvim·\1\0\0\5\0\f\0&6\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\1\6\1\4\0X\2\2Ä\f\2\1\0X\2\1Ä\18\2\0\0\18\4\2\0009\2\5\2B\2\2\2\18\1\2\0\a\0\6\0X\2\5Ä'\2\a\0\18\3\1\0&\2\3\2L\2\2\0X\2\rÄ\a\0\b\0X\2\5Ä'\2\t\0\18\3\1\0&\2\3\2L\2\2\0X\2\6Ä\a\0\n\0X\2\4Ä'\2\v\0\18\3\1\0&\2\3\2L\2\2\0\18\4\0\0009\2\5\0D\2\2\0\tÔÖπ \bmac\tÔÖ∫ \bdos\tÔÖº \tunix\nupper\5\17fileencoding\15fileformat\abo\bvim\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n Ôêò \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä ˝\29\1\0\19\0•\1\2°\0036\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\0016\2\4\0'\4\5\0B\2\2\0026\3\4\0'\5\6\0B\3\2\0029\4\a\0025\5\t\0=\5\b\2+\5\0\0009\6\n\0015\b\v\0B\6\2\0029\a\f\0015\t\r\0B\a\2\0029\b\14\1'\n\15\0'\v\16\0B\b\3\2\a\b\17\0X\b\3Ä\18\b\a\0\18\a\6\0\18\6\b\0009\b\18\1'\n\15\0005\v\19\0=\6\20\v=\a\21\vB\b\3\0019\b\18\1'\n\22\0005\v\23\0=\6\20\v=\a\21\vB\b\3\0019\b\24\1'\n\22\0B\b\2\0016\b\25\0009\b\26\b9\b\27\b\a\b\28\0X\b\5Ä5\b\29\0=\6\20\b=\a\21\b\18\5\b\0X\b\4Ä5\b\30\0=\6\20\b=\a\21\b\18\5\b\0003\b\31\0003\t \0003\n!\0003\v\"\0006\f#\0003\r%\0=\r$\f6\f#\0003\r'\0=\r&\f6\f\25\0009\f(\f9\f)\f'\14*\0+\15\1\0B\f\3\0014\f\0\0=\f+\0044\f\0\0=\f,\0044\f\0\0=\f-\0044\f\0\0=\f.\0044\f\0\0=\f/\0044\f\b\0005\r5\0005\0141\0003\0150\0=\0152\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\0146\r>\r\1\f5\r;\0005\0148\0003\0157\0=\0152\0145\15:\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14<\r>\r\2\f5\rB\0005\14=\0009\15>\3=\15?\0144\15\3\0\18\16\t\0'\18@\0B\16\2\0029\16A\16>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14C\r>\r\3\f5\rG\0005\14D\0009\15>\3=\15?\0145\15F\0009\16E\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14H\r>\r\4\f5\rL\0005\14I\0009\15J\3=\15?\0144\15\3\0009\16K\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14M\r>\r\5\f5\rO\0005\14N\0009\15J\3=\15?\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14P\r>\r\6\f5\rR\0005\14Q\0009\15J\3=\15?\0144\15\3\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14S\r>\r\a\f=\f+\0044\f\3\0\18\r\n\0)\15\1\0B\r\2\0?\r\0\0=\f,\0044\f\14\0005\rV\0005\14T\0005\15U\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14W\r>\r\1\f5\r[\0005\14X\0005\15Z\0009\16Y\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14\\\r>\r\2\f5\r`\0005\14]\0005\15_\0009\16^\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14a\r>\r\3\f5\rd\0005\14b\0005\15c\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14e\r>\r\4\f5\rj\0005\14g\0003\15f\0=\0152\0145\15h\0009\16\21\5>\16\2\15=\15i\0144\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14k\r>\r\5\f5\rp\0005\14m\0003\15l\0=\0152\0145\15n\0009\16\21\5>\16\2\15=\15i\0145\15o\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14q\r>\r\6\f5\ru\0005\14s\0003\15r\0=\0152\0145\15t\0009\16\21\5>\16\2\15=\15i\0144\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14v\r>\r\a\f5\r|\0005\14x\0003\15w\0=\0152\0143\15y\0=\15?\0145\15z\0009\16\21\5>\16\2\15=\15i\0145\15{\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14}\r>\r\b\f5\rÇ\0005\14\0003\15~\0=\0152\14\18\15\v\0)\17d\0B\15\2\2=\15?\0145\15Ä\0009\16\21\5>\16\2\15=\15i\0145\15Å\0009\16^\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14É\r>\r\t\f5\rà\0005\14Ö\0003\15Ñ\0=\0152\14\18\15\v\0)\17P\0B\15\2\2=\15?\0145\15Ü\0009\16\21\5>\16\2\15=\15i\0145\15á\0009\16K\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14â\r>\r\n\f5\rê\0005\14ã\0003\15ä\0=\0152\0149\15å\3=\15?\0145\15ç\0009\16\21\5>\16\2\15=\15i\0145\15è\0009\16é\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ë\r>\r\v\f5\rî\0005\14í\0009\15å\3=\15?\0145\15ì\0009\16é\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ï\r>\r\f\f\18\r\n\0)\15\3\0B\r\2\0?\r\1\0=\f-\0044\f\4\0005\rò\0005\14ó\0003\15ñ\0=\0152\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\0146\r>\r\1\f5\rú\0005\14ô\0005\15ö\0009\16\21\5>\16\2\15=\15i\0145\15õ\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ù\r>\r\2\f5\r†\0005\14û\0009\15>\3=\15?\0145\15ü\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14°\r>\r\3\f=\f.\0044\f\3\0005\r£\0005\14¢\0004\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14§\r>\r\1\f=\f/\0042\0\0ÄK\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\14SFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14SFileName\15BufferType\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\rprovider\17FileTypeName\14separator\6 \1\0\0\1\0\0\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\1\4\0\0\0\0\tbold\vviolet\1\2\0\0\tNONE\24check_git_workspace\1\0\1\14separator\6 \0\15FileFormat\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\1\14separator\a  \0\15IndentInfo\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\ticon\tÔÄº \14separator\a  \0\14LspClient\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\0\1\0\2\ticon\tÔÇÖ \14separator\a  \0\rNumLines\1\0\0\1\2\0\0\tNONE\1\0\0\0\fPercent\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\1\14separator\6 \0\rLineInfo\1\0\0\24separator_highlight\1\2\0\0\tNONE\1\0\1\14separator\6 \0\19DiagnosticInfo\1\0\0\1\4\0\0\0\0\tbold\1\0\2\ticon\n ÔÅö \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\1\4\0\0\0\0\tbold\tcyan\1\0\2\ticon\n ÔÅ™ \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\4\0\0\0\0\tbold\vyellow\1\0\2\ticon\n ÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\4\0\0\0\0\tbold\1\0\2\ticon\n ÔÅó \rprovider\20DiagnosticError\15DiffRemove\1\0\0\1\0\3\ticon\tÔëò \14separator\5\rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\3\ticon\tÔëô \14separator\5\rprovider\17DiffModified\fDiffAdd\1\0\0\ngreen\18hide_in_width\1\0\3\ticon\tÔëó \14separator\5\rprovider\fDiffAdd\rFileName\1\0\0\1\4\0\0\0\0\tbold\fmagenta\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color\rfileinfo\14condition\21buffer_not_empty\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\15RainbowRed\1\0\0\14highlight\tblue\rprovider\1\0\0\0\21short_line_right\20short_line_left\nright\bmid\tleftm    augroup galaxyline_config\n      au!\n      au ColorScheme * lua UpdateGalaxyline()\n    augroup END\n  \14nvim_exec\bapi\0\21ReloadGalaxyline\0\21UpdateGalaxyline\a_G\0\0\0\0\1\0\t\tcyan\f#008080\ngreen\f#98be65\vyellow\f#ECBE7B\rdarkblue\f#081633\tblue\f#51afef\bred\f#ec5f67\fmagenta\f#c678dd\vviolet\f#a9a1e1\vorange\f#FF8800\1\0\t\tcyan\f#008080\ngreen\f#7f9f54\vyellow\f#ECBE7B\rdarkblue\f#081633\tblue\f#4596cd\bred\f#ec5f67\fmagenta\f#c678dd\vviolet\f#958ec7\vorange\f#FF8800\nlight\15background\6o\bvim\fhi_link\1\0\1\bgui\tNONE\17StatusLineNC\abg\afg\1\0\1\bgui\tNONE\ahi\0061\freverse\15StatusLine\16get_hl_attr\1\3\0\0\15StatusLine\vNormal\vget_bg\1\3\0\0\15StatusLine\vNormal\vget_fg\1\r\0\0\rNvimTree\nvista\tdbui\vpacker\18fugitiveblame\15LspTrouble\18DiffviewFiles\29DiffviewFileHistoryPanel\26DiffviewFHOptionPanel\fOutline\14dashboard\17NeogitStatus\20short_line_list\fsection\25galaxyline.condition\15galaxyline\frequire\ahl\nutils\vcommon\vConfig\3ÄÄ¿ô\4\27ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/NTBBloodbath/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n¢\r\0\0\5\0\30\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\0016\0\26\0009\0\27\0009\0\28\0'\2\29\0+\3\1\0B\0\3\1K\0\1\0É\1    hi def link GitSignsAdd diffAdded\n    hi def link GitSignsChange diffChanged\n    hi def link GitSignsDelete diffRemoved\n  \14nvim_exec\bapi\bvim\14diff_opts\1\0\3\rinternal\2\14algorithm\14histogram\21indent_heuristic\2\16watch_index\1\0\1\rinterval\3Ë\a\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\f\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\16n <leader>d2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>hb0<cmd>lua require\"gitsigns\".blame_line()<CR>\to ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\tx ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\fnoremap\2\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\vbuffer\2\nsigns\1\0\4\20update_debounce\3d\18sign_priority\3\6\nnumhl\1\vlinehl\1\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\ttext\b‚ñç\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\b‚ñç\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\nnumhl\21GitSignsChangeNr\ttext\b‚ñç\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\ttext\b‚ñç\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/gruvbox-community/gruvbox"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/iceberg.vim",
    url = "https://github.com/cocopon/iceberg.vim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["indent-o-matic"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/indent-o-matic",
    url = "https://github.com/Darazaki/indent-o-matic"
  },
  ["jellybeans.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/jellybeans.vim",
    url = "https://github.com/nanotech/jellybeans.vim"
  },
  ["lir-git-status.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/lir-git-status.nvim",
    url = "https://github.com/tamago324/lir-git-status.nvim"
  },
  ["lir.nvim"] = {
    config = { "\27LJ\2\n|\0\0\3\0\b\0\0156\0\0\0009\0\1\0009\0\2\0+\2\2\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\4Ä6\0\3\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\rwincmd q\bcmd\17lir_is_float\6w\bvim\18remove_buffer\blib\vConfigE\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\5¿\fnorm! j\bcmd\bvim\16toggle_markE\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\5¿\fnorm! k\bcmd\bvim\16toggle_mark \0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\1\vborder\vsingleŒ\2\0\1\n\1\15\00166\1\0\0009\1\1\0019\1\2\1\f\3\0\0X\3\1Ä'\3\3\0'\4\4\0B\1\3\0026\2\0\0009\2\1\0029\2\5\2\18\4\1\0B\2\2\2\t\2\0\0X\2\vÄ6\2\0\0009\2\1\0029\2\6\0026\4\0\0009\4\a\0049\4\b\4B\4\1\2'\5\4\0B\2\3\2\18\1\2\0X\2\14Ä6\2\0\0009\2\1\0029\2\t\2\18\4\1\0B\2\2\2\t\2\0\0X\2\aÄ6\2\0\0009\2\1\0029\2\6\2\18\4\1\0'\5\n\0B\2\3\2\18\1\2\0006\2\0\0009\2\v\2'\4\f\0006\5\0\0009\5\1\0059\5\r\5-\a\0\0009\a\14\a\18\t\1\0B\a\2\0A\5\0\2&\4\5\4B\2\2\1K\0\1\0\1¿\25path_remove_trailing\16fnameescape\ae \bcmd\a:h\16isdirectory\bcwd\tloop\16fnamemodify\17filereadable\a:p\6%\vexpand\afn\bvim\0¢\1\0\1\t\2\a\0\24+\1\0\0\15\0\0\0X\2\14Ä-\2\0\0009\2\0\0026\4\1\0009\4\2\0049\4\3\0046\6\1\0009\6\2\0069\6\4\6\18\b\0\0B\6\2\2'\a\5\0B\4\3\0A\2\0\2\18\1\2\0-\2\1\0009\2\6\2\f\4\1\0X\4\1Ä+\4\0\0B\2\2\1K\0\1\0\1¿\3¿\tinit\a:p\vexpand\16fnamemodify\afn\bvim\25path_remove_trailing¿\2\0\1\a\2\r\00156\1\0\0009\1\1\0019\1\2\1\f\3\0\0X\3\1Ä'\3\3\0'\4\4\0B\1\3\0026\2\0\0009\2\1\0029\2\5\2\18\4\1\0B\2\2\2\t\2\0\0X\2\vÄ6\2\0\0009\2\1\0029\2\6\0026\4\0\0009\4\a\0049\4\b\4B\4\1\2'\5\4\0B\2\3\2\18\1\2\0X\2\14Ä6\2\0\0009\2\1\0029\2\t\2\18\4\1\0B\2\2\2\t\2\0\0X\2\aÄ6\2\0\0009\2\1\0029\2\6\2\18\4\1\0'\5\n\0B\2\3\2\18\1\2\0-\2\0\0009\2\v\2\15\0\1\0X\4\6Ä-\4\1\0009\4\f\4\18\6\1\0B\4\2\2\14\0\4\0X\5\1Ä+\4\0\0B\2\2\1K\0\1\0\3¿\1¿\25path_remove_trailing\vtoggle\a:h\16isdirectory\bcwd\tloop\16fnamemodify\17filereadable\a:p\6%\vexpand\afn\bvim\0ç\t\1\0\f\0M\0l4\0\0\0006\1\0\0009\1\1\0019\1\2\0016\2\0\0009\2\1\0029\2\3\0026\3\4\0'\5\5\0B\3\2\0026\4\4\0'\6\6\0B\4\2\0026\5\4\0'\a\a\0B\5\2\0026\6\4\0'\b\b\0B\6\2\0026\a\4\0'\t\t\0B\a\2\0029\a\n\a5\t\v\0005\n\r\0009\v\f\4=\v\14\n9\v\f\4=\v\15\n9\v\f\4=\v\16\n9\v\17\4=\v\18\n9\v\19\4=\v\20\n9\v\21\4=\v\22\n9\v\23\4=\v\24\n9\v\23\4=\v\25\n3\v\26\0=\v\27\n9\v\28\4=\v\29\n9\v\30\4=\v\31\n9\v \4=\v!\n9\v\"\4=\v#\n9\v$\4=\v%\n9\v&\4=\v'\n9\v(\4=\v)\n9\v*\4=\v+\n9\v,\5=\v-\n3\v.\0=\v/\n3\v0\0=\v1\n9\v\"\6=\v2\n9\v3\6=\v4\n9\v5\6=\v6\n=\n7\t5\n8\0003\v9\0=\v:\n=\n;\tB\a\2\0016\a\4\0'\t<\0B\a\2\0029\a\n\a5\t=\0B\a\2\0013\a?\0=\a>\0003\aA\0=\a@\0003\aC\0=\aB\0009\aD\2'\tE\0'\nF\0005\vG\0B\a\4\0019\aD\2'\tH\0'\nE\0B\a\3\0016\aI\0009\aJ\a9\aK\a'\tL\0+\n\1\0B\a\3\0016\a\0\0=\0\t\a2\0\0ÄK\0\1\0¬\1\n    command! -bar -nargs=? -complete=dir LirExplore call v:lua.Config.lir.explore(<f-args>)\n\n    command! -bar -nargs=? -complete=dir LirFloat call v:lua.Config.lir.open_float(<f-args>)\n  \14nvim_exec\bapi\bvim\25DevIconLirFolderNode\1\0\1\fdefault\2\14Directory\18LirFolderIcon\fhi_link\0\17toggle_float\0\15open_float\0\fexplore\1\0\1\17show_ignored\2\19lir.git_status\nfloat\rwin_opts\0\1\0\1\rwinblend\3\0\rmappings\6p\npaste\6x\bcut\6y\6K\0\6J\0\6t\16toggle_mark\6d\vdelete\n<C-h>\23toggle_show_hidden\agy\14yank_path\n<C-]>\acd\6c\tcopy\6r\vrename\6a\fnewfile\6m\nmkdir\6q\0\6h\6-\aup\n<C-t>\ftabedit\n<C-v>\vvsplit\n<C-s>\nsplit\6l\6o\t<CR>\1\0\0\tedit\1\0\3\16hide_cursor\2\20devicons_enable\2\22show_hidden_files\2\nsetup\blir\26lir.clipboard.actions\21lir.mark.actions\16lir.actions\14lir.float\frequire\ahl\nutils\vcommon\vConfig\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/lir.nvim",
    url = "https://github.com/tamago324/lir.nvim"
  },
  ["lsp-trouble.nvim"] = {
    config = { "\27LJ\2\nC\0\0\4\1\3\0\5-\0\0\0009\0\0\0'\2\1\0'\3\2\0D\0\3\0\1¿\fTrouble\rfiletype\25find_buf_with_option2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\19LspTroubleOpen\bcmd\bvim>\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\31wincmd p | LspTroubleClose\bcmd\bvim€\5\1\0\b\0\22\0\0316\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0016\2\0\0'\4\5\0B\2\2\0029\2\6\0025\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\4B\2\2\0019\2\f\0003\4\r\0003\5\14\0003\6\15\0005\a\16\0B\2\5\0027\2\17\0006\2\18\0009\2\19\0029\2\20\2'\4\21\0+\5\1\0B\2\3\0012\0\0ÄK\0\1\0g    augroup LspTroubleConfig\n      au!\n      au FileType Trouble setlocal cc=\n    augroup END\n    \14nvim_exec\bapi\bvim\27LspTroubleCustomToggle\1\0\2\20remember_height\2\nfocus\2\0\0\0\23create_buf_toggler\nsigns\1\0\4\thint\bÔ†µ\fwarning\bÔî©\nerror\bÔôô\16information\bÔëâ\16action_keys\1\0\v\19toggle_preview\6P\16toggle_mode\6m\vcancel\n<esc>\tjump\t<cr>\frefresh\6R\15open_folds\azR\tnext\6j\nclose\6q\rprevious\6k\fpreview\6p\16close_folds\azM\1\0\n\tmode\26workspace_diagnostics\nicons\2\vheight\3\n\16fold_closed\bÔë†\14fold_open\bÔëº\17auto_preview\1\15auto_close\1\14auto_open\1\17indent_lines\2\29use_lsp_diagnostic_signs\1\nsetup\ftrouble\nutils\vcommon\vConfig\20nvim-config.lib\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/lsp-trouble.nvim",
    url = "https://github.com/folke/lsp-trouble.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nü\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\4\15max_height\3\f\14max_width\3P\16hint_prefix\t‚óè \16hint_enable\1\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/sindrets/material.nvim"
  },
  ["neodark.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/neodark.vim",
    url = "https://github.com/KeitaNakamura/neodark.vim"
  },
  neogit = {
    config = { "\27LJ\2\n•\6\0\0\14\3\26\3Å\1-\0\0\0009\0\0\0'\2\1\0B\0\2\2-\1\0\0009\1\2\1'\3\1\0B\1\2\2-\2\1\0009\2\3\2\18\4\1\0B\2\2\0029\3\4\2*\4\0\0\3\4\3\0X\3\2Ä)\3ˇˇX\4\1Ä)\3\1\0\18\6\2\0009\4\5\2\29\a\1\3B\4\3\2\18\a\2\0009\5\5\2\29\b\2\3B\5\3\2-\6\2\0009\6\6\6'\b\a\0005\t\t\0\18\f\5\0009\n\b\5B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\v\0005\t\f\0\18\f\4\0009\n\b\4B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\r\0005\t\14\0\18\f\5\0009\n\b\5B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\15\0005\t\17\0-\n\0\0009\n\2\n'\f\16\0+\r\1\0B\n\3\2\14\0\n\0X\v\3Ä\18\f\5\0009\n\b\5B\n\2\2=\n\n\t-\n\0\0009\n\0\n'\f\16\0+\r\1\0B\n\3\2\14\0\n\0X\v\aÄ-\n\0\0009\n\0\n'\f\18\0B\n\2\2\14\0\n\0X\v\1Ä\18\n\0\0=\n\19\t-\n\0\0009\n\20\n'\f\16\0+\r\1\0B\n\3\2=\n\21\tB\6\3\1-\6\2\0009\6\6\6'\b\22\0005\t\24\0-\n\0\0009\n\2\n'\f\23\0+\r\1\0B\n\3\2\14\0\n\0X\v\3Ä\18\f\5\0009\n\b\5B\n\2\2=\n\n\t-\n\0\0009\n\0\n'\f\23\0+\r\1\0B\n\3\2\14\0\n\0X\v\aÄ-\n\0\0009\n\0\n'\f\25\0B\n\2\2\14\0\n\0X\v\1Ä\18\n\0\0=\n\19\t-\n\0\0009\n\20\n'\f\23\0+\r\1\0B\n\3\2=\n\21\tB\6\3\1K\0\1\0\1¿\0¿\2¿\16diffRemoved\1\0\0\15DiffDelete\30NeogitDiffDeleteHighlight\bgui\fget_gui\afg\14diffAdded\1\0\0\fDiffAdd\27NeogitDiffAddHighlight\1\0\0\31NeogitDiffContextHighlight\1\0\0\30NeogitHunkHeaderHighlight\abg\1\0\0\vto_css\21NeogitHunkHeader\ahi\nshade\14lightness\rfrom_hex\vget_bg\vNormal\vget_fg\1ÄÄÄˇ\3ÁÃô≥\6≥Êå˛\3ÁÃô≥\6≥ÊÃ˝\3”\6\1\0\t\0\31\0-6\0\0\0009\0\1\0009\0\2\0009\0\3\0006\1\0\0009\1\1\0019\1\4\0016\2\0\0009\2\1\0029\2\5\0024\3\0\0006\4\6\0'\6\a\0B\4\2\0029\4\b\0045\6\t\0005\a\n\0=\a\v\0065\a\r\0005\b\f\0=\b\14\a5\b\15\0=\b\16\a5\b\17\0=\b\18\a=\a\19\0065\a\20\0=\a\21\0065\a\23\0005\b\22\0=\b\v\a=\a\24\6B\4\2\0013\4\26\0=\4\25\0036\4\27\0009\4\28\0049\4\29\4'\6\30\0+\a\1\0B\4\3\0016\4\0\0=\3\a\0042\0\0ÄK\0\1\0˚\2    augroup neogit_config\n      au!\n      au FileType NeogitStatus setl nobl\n      au FileType Neogit* setl nolist\n      \" au ColorScheme * call v:lua.Config.neogit.fix_hl()\n      au FileType NeogitCommitView setl nobl\n      au BufEnter,FileType NeogitCommitView set eventignore+=CursorMoved\n      au BufLeave NeogitCommitView set eventignore-=CursorMoved\n    augroup END\n  \14nvim_exec\bapi\bvim\0\vfix_hl\rmappings\1\0\0\1\0\1\6B\16BranchPopup\17integrations\1\0\1\rdiffview\2\nsigns\thunk\1\3\0\0\5\5\titem\1\3\0\0\bÔë†\bÔëº\fsection\1\0\0\1\3\0\0\bÔë†\bÔëº\vstatus\1\0\1\24recent_commit_count\3\n\1\0\3!disable_context_highlighting\1\17disable_hint\2\18disable_signs\1\nsetup\vneogit\frequire\nutils\ahl\nColor\ncolor\vcommon\vConfig\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n¢\5\0\0\5\0\27\00166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1)\0¥\0005\1\b\0005\2\6\0005\3\a\0>\0\3\3>\3\2\2=\2\t\0015\2\n\0005\3\v\0>\0\3\3>\3\2\2=\2\f\0015\2\r\0005\3\14\0\24\4\0\0>\4\3\3>\3\2\2=\2\15\0015\2\16\0005\3\17\0\24\4\0\0>\4\3\3>\3\2\2=\2\18\0015\2\19\0004\3\3\0>\0\1\3>\3\2\2=\2\20\0015\2\21\0004\3\3\0>\0\1\3>\3\2\2=\2\22\0015\2\23\0004\3\3\0>\0\1\3>\3\2\2=\2\24\0016\2\0\0'\4\25\0B\2\2\0029\2\26\2\18\4\1\0B\2\2\1K\0\1\0\17set_mappings\21neoscroll.config\azb\1\2\0\0\azb\azz\1\2\0\0\azz\azt\1\2\0\0\azt\n<C-f>\1\3\0\0#vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-b>\1\3\0\0$-vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-d>\1\3\0\0 math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\n<C-u>\1\0\0\1\3\0\0!-math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\rmappings\1\0\5\16hide_cursor\2\25cursor_scrolls_alone\2\22respect_scrolloff\1\rstop_eof\2\20easing_function\14quadratic\1\b\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\azt\azz\azb\nsetup\14neoscroll\frequire\4\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["night-owl.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/night-owl.vim",
    url = "https://github.com/haishanh/night-owl.vim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    after = { "nvim-cmp" },
    loaded = true,
    only_config = true
  },
  ["nvim-base16"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-base16",
    url = "https://github.com/RRethy/nvim-base16"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\nk\0\3\15\1\5\0\17'\3\0\0006\4\1\0\18\6\2\0B\4\2\4H\a\tÄ6\t\2\0009\t\3\t'\v\4\0\18\f\3\0-\r\0\0008\r\a\r\18\14\b\0B\t\5\2\18\3\t\0F\a\3\3R\aıL\3\2\0\0¿\r%s %s %d\vformat\vstring\npairs\5ç\6\1\0\a\0\18\0\0275\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\f\0005\4\4\0003\5\5\0=\5\6\0045\5\a\0=\5\b\0044\5\3\0005\6\t\0>\6\1\0055\6\n\0>\6\2\5=\5\v\4=\4\r\3B\1\2\0016\1\14\0009\1\15\0019\1\16\1'\3\17\0+\4\1\0B\1\3\0012\0\0ÄK\0\1\0\\    hi! BufferLineDiagnostic gui=bold\n    hi! BufferLineDiagnosticVisible gui=bold\n    \14nvim_exec\bapi\bvim\foptions\1\0\0\foffsets\1\0\3\15text_align\vcenter\ttext\19Source Control\rfiletype\18DiffviewFiles\1\0\3\15text_align\vcenter\ttext\nFiles\rfiletype\rNvimTree\20separator_style\1\3\0\0\b‚ñè\b‚ñï\26diagnostics_indicator\0\1\0\16\20max_name_length\3\18\23right_trunc_marker\bÔÇ©\22left_trunc_marker\bÔÇ®\15close_icon\bÔÄç\18modified_icon\b‚óè\22buffer_close_icon\bÔôï\fnumbers\tnone\27always_show_bufferline\2\25enforce_regular_tabs\1\tview\fdefault\24persist_buffer_sort\2\20show_close_icon\1\28show_buffer_close_icons\2\16diagnostics\rnvim_lsp\rtab_size\3\18\22max_prefix_length\3\15\nsetup\15bufferline\frequire\1\0\4\tinfo\bÔÅö\fwarning\bÔÅ±\nerror\bÔÅó\thint\bÔÅ™\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    after = { "cmp-vsnip" },
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimì\1\0\0\t\0\6\0\0214\0\0\0006\1\0\0006\3\1\0009\3\2\0039\3\3\3B\3\1\0A\1\0\4X\4\aÄ6\6\1\0009\6\2\0069\6\4\6\18\b\5\0B\6\2\2+\a\2\0<\a\6\0E\4\3\3R\4˜6\1\1\0009\1\5\1\18\3\0\0D\1\2\0\rtbl_keys\21nvim_win_get_buf\19nvim_list_wins\bapi\bvim\vipairsÀ\b\1\0\f\0.\0N6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0025\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0009\b\f\b)\n¸ˇB\b\2\2=\b\14\a9\b\v\0009\b\f\b)\n\4\0B\b\2\2=\b\15\a9\b\v\0009\b\16\bB\b\1\2=\b\17\a9\b\v\0009\b\18\bB\b\1\2=\b\19\a9\b\v\0009\b\20\b5\n\21\0009\v\22\0009\v\23\v=\v\24\nB\b\2\2=\b\25\a=\a\v\0065\a\29\0006\b\0\0'\n\26\0B\b\2\0029\b\27\b5\n\28\0B\b\2\2=\b\30\a=\a\31\0065\a \0=\a!\0064\a\6\0005\b\"\0>\b\1\a5\b#\0>\b\2\a5\b$\0>\b\3\a5\b%\0>\b\4\a5\b&\0003\t'\0=\t(\b>\b\5\a=\a)\6B\4\2\0019\4*\0\18\6\4\0009\4+\4'\a,\0009\b-\1B\b\1\0A\4\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\fsources\15get_bufnrs\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nspell\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\18documentation\1\0\1\vborder\vsingle\15formatting\vformat\1\0\0\1\0\2\14with_text\2\rmaxwidth\3¨\2\15cmp_format\flspkind\t<CR>\rbehavior\fReplace\20ConfirmBehavior\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\vMethod\n Óûõ \tUnit\n Ô•¨ \18TypeParameter\n<ÔûÉ>\tText\n Ôî´ \vFolder\n Ô±Æ \16Constructor\n Óàè \tFile\n ÔÖõ \nValue\n Ô¢ü \fKeyword\n Ôùß \14Reference\n ÔíÅ \tEnum\n Ô©ó \rProperty\n ÔÇ≠ \vModule\n Ôô® \rOperator\n Ôöî \nEvent\n ÔÉß \vStruct\n ÔÜ≥ \15EnumMember\n ÔÖù \14Interface\t Ô®†\nColor\n Óà´ \nClass\n Ô†ñ \nField\n Óúñ \rConstant\n Ôõº \rVariable\n[Óúñ]\rFunction\n Óûõ \fSnippet\n Ôóè \15cmp_buffer\"nvim-autopairs.completion.cmp\bcmp\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n≥\2\0\0\4\0\v\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0B\0\3\1K\0\1\0\1\0\t\tmode\15background\rRRGGBBAA\2\vRRGGBB\2\bRGB\2\vcss_fn\1\vhsl_fn\1\vrgb_fn\1\nnames\1\bcss\1\tsass\1\0\5\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\vcss_fn\2\tscss\1\0\5\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\vcss_fn\2\bcss\1\0\5\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\vcss_fn\2\1\3\0\0\6*\t!git\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\nœ\14\0\0\a\0=\0d6\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\5\0'\2\6\0B\0\2\0029\1\a\0005\2\t\0005\3\n\0=\3\v\2=\2\b\0019\1\f\0004\2\3\0005\3\r\0005\4\14\0=\4\15\0035\4\16\0=\4\17\3>\3\1\0025\3\18\0>\3\2\2=\2\b\0016\1\5\0'\3\19\0B\1\2\0029\1\20\0015\3\22\0005\4\21\0=\4\23\0035\4\25\0005\5\24\0=\5\26\4=\4\27\0035\4 \0004\5\5\0005\6\28\0>\6\1\0055\6\29\0>\6\2\0055\6\30\0>\6\3\0055\6\31\0>\6\4\5=\5!\4=\4\"\0035\4$\0005\5#\0=\5!\4=\4%\0035\4&\0005\5(\0005\6'\0=\6)\5=\5\27\4=\4*\0035\4+\0=\4,\3B\1\2\0019\1\a\0005\2.\0004\3\3\0006\4/\0009\0040\4'\0061\0B\4\2\2'\0052\0&\4\5\4>\4\1\3=\3\v\2=\2-\0019\1\f\0004\2\4\0005\0034\0006\4\0\0009\4\1\0049\0045\4B\4\1\2=\0046\3>\3\1\0025\0037\0006\4\5\0'\0068\0B\4\2\0029\0049\4=\4:\3>\3\2\0025\3;\0006\4\0\0009\4\1\0049\0045\4B\4\1\2=\0046\0035\4<\0=\4\v\3>\3\3\2=\0023\1K\0\1\0\1\6\0\0\20${fileBasename}\14--verbose\a-i\15--no-cache\15--watchAll\1\0\a\tname\28Jest watch current file\fprogram2${workspaceFolder}/node_modules/jest/bin/jest\ttype\nnode2\frequest\vlaunch\fconsole\23integratedTerminal\rprotocol\14inspector\27internalConsoleOptions\14neverOpen\14processId\17pick_process\14dap.utils\1\0\3\tname\22Attach to process\ttype\nnode2\frequest\vattach\bcwd\vgetcwd\1\0\a\frequest\vlaunch\ttype\nnode2\fprogram\f${file}\rprotocol\14inspector\15sourceMaps\2\tname\vLaunch\fconsole\23integratedTerminal\20typescriptreact1/git/vscode-node-debug2/out/src/nodeDebug.js\tHOME\vgetenv\aos\1\0\2\fcommand\tnode\ttype\15executable\nnode2\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\0\ttray\1\0\2\rposition\vbottom\tsize\3\n\1\2\0\0\trepl\fsidebar\relements\1\0\2\rposition\tleft\tsize\3(\1\0\2\aid\fwatches\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vstacks\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\16breakpoints\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vscopes\tsize\4\0ÄÄ¿˛\3\rmappings\vexpand\1\0\4\topen\6o\tedit\6e\trepl\6r\vremove\6d\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\b‚ñ∏\rexpanded\b‚ñæ\nsetup\ndapui\1\0\5\frequest\vlaunch\ttype\bphp\tname!Launch currently open script\tport\3´F\bcwd\21${workspaceRoot}\vignore\1\3\0\0#**/silverstripe-cache/**/*.php\23**/vendor/**/*.php\17pathMappings\1\0\1\30/srv/archipro/www/marwan/\24${workspaceFolder}/\1\0\6\frequest\vlaunch\ttype\bphp\tname\22Listen for XDebug\tport\3´F\16stopOnEntry\1\rhostname\f0.0.0.0\19configurations\targs\1\2\0\0=/home/marwan38/programs/vscode-php-debug/out/phpDebug.js\1\0\2\fcommand\tnode\ttype\15executable\bphp\radapters\bdap\frequire\1\0\4\nnumhl\5\ttext\bÔó£\vlinehl\5\vtexthl\28LspDiagnosticsSignError\18DapBreakpoint\16sign_define\afn\bvim\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils",
    url = "https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-pqf.git"] = {
    config = { "\27LJ\2\nq\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\0\1\0\4\tinfo\bÔÅö\fwarning\bÔÅ±\nerror\bÔÅó\thint\bÔÅ™\nsetup\bpqf\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-pqf.git",
    url = "https://gitlab.com/yorickpeterse/nvim-pqf"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\nß\18\0\0\a\0<\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3#\0005\4\26\0005\5\27\0=\5\28\0045\5\30\0005\6\29\0=\6\31\0055\6 \0=\6!\5=\5\"\4=\4$\0035\4%\0005\5&\0=\5\28\0045\5(\0005\6'\0=\6\31\0055\6)\0=\6!\5=\5\"\4=\4*\3=\3+\0025\3-\0005\4,\0=\4.\0035\0040\0005\5/\0=\5\31\4=\4\"\3=\0031\0025\0034\0005\0042\0005\0053\0=\5\"\4=\0045\0035\0046\0=\0047\3=\0038\2B\0\2\0016\0009\0009\0:\0'\2;\0B\0\2\1K\0\1\0i    augroup SpectreConfig\n    au!\n    au FileType spectre_panel setlocal nolist\n    augroup END\n    \bcmd\bvim\fdefault\freplace\1\0\1\bcmd\bsed\tfind\1\0\0\1\2\0\0\16ignore-case\1\0\1\bcmd\aag\19replace_engine\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\bsed\1\0\0\1\0\1\bcmd\bsed\16find_engine\aag\1\0\3\nvalue\r--hidden\ticon\b[H]\tdesc\16hidden file\1\0\0\1\0\3\ticon\b[I]\nvalue\a-i\tdesc\16ignore case\1\3\0\0\14--vimgrep\a-s\1\0\1\bcmd\aag\arg\1\0\0\foptions\vhidden\1\0\3\nvalue\r--hidden\ticon\b[H]\tdesc\16hidden file\16ignore-case\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\1\bcmd\arg\fmapping\25toggle_ignore_hidden\1\0\3\bcmd=<cmd>lua require('spectre').change_options('hidden')<CR>\bmap\ath\tdesc\25toggle search hidden\23toggle_ignore_case\1\0\3\bcmdB<cmd>lua require('spectre').change_options('ignore-case')<CR>\bmap\ati\tdesc\23toggle ignore case\21change_view_mode\1\0\3\bcmd2<cmd>lua require('spectre').change_view()<CR>\bmap\14<leader>v\tdesc\28change result view mode\16run_replace\1\0\3\bcmd:<cmd>lua require('spectre.actions').run_replace()<CR>\bmap\14<leader>R\tdesc\16replace all\21show_option_menu\1\0\3\bcmd3<cmd>lua require('spectre').show_options()<CR>\bmap\14<leader>o\tdesc\16show option\16replace_cmd\1\0\3\bcmd:<cmd>lua require('spectre.actions').replace_cmd()<CR>\bmap\14<leader>c\tdesc\30input replace vim command\15send_to_qf\1\0\3\bcmd9<cmd>lua require('spectre.actions').send_to_qf()<CR>\bmap\n<c-q>\tdesc\30send all item to quickfix\15enter_file\1\0\3\bcmd;<cmd>lua require('spectre.actions').select_entry()<CR>\bmap\t<cr>\tdesc\22goto current file\16delete_line\1\0\0\1\0\3\bcmd-<cmd>lua require('spectre').delete()<CR>\bmap\add\tdesc\24toggle current item\14highlight\1\0\3\freplace\rDiffText\aui\vString\vsearch\20DiffAddAsDelete\1\0\a\rline_sepÉ\1‚îî‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ\19color_devicons\2\19is_insert_mode\1\19result_padding\n‚îÇ  \23is_open_target_win\2\19line_sep_startÉ\1‚îå‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ\20replace_vim_cmd\tcfdo\nsetup\fspectre\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nâ\1\0\1\r\1\6\0\0166\1\0\0-\3\0\0B\1\2\4H\4\tÄ6\6\1\0009\6\2\0069\6\3\6\18\b\0\0'\t\4\0\18\n\4\0\18\v\5\0005\f\5\0B\6\6\1F\4\3\3R\4ıK\0\1\0\3¿\1\0\3\vsilent\2\fnoremap\2\vnowait\2\6n\24nvim_buf_set_keymap\bapi\bvim\npairs\0\0\4\1\5\1\0176\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\1ÄK\0\1\0006\0\0\0009\0\1\0)\1\1\0=\1\2\0-\0\0\0006\2\0\0009\2\3\0029\2\4\2B\2\1\0A\0\0\1K\0\1\0\4¿\25nvim_get_current_buf\bapi\22custom_setup_done\6b\bvim\2Ä\1\0\0\4\0\6\0\0166\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0B\2\1\2\15\0\2\0X\3\3Ä9\2\4\0B\2\1\1X\2\2Ä9\2\5\1B\2\1\1K\0\1\0\topen\nfocus\rwin_open\18nvim-tree.lib\19nvim-tree.view\frequire÷\1\0\0\6\0\n\0\0256\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2B\2\1\0029\3\6\1B\3\1\2\15\0\3\0X\4\3Ä9\3\a\1B\3\1\1X\3\aÄ9\3\b\0B\3\1\0016\3\3\0009\3\4\0039\3\t\3\18\5\2\0B\3\2\1K\0\1\0\25nvim_set_current_win\topen\nclose\rwin_open\25nvim_get_current_win\bapi\bvim\19nvim-tree.view\18nvim-tree.lib\frequire¨\1\0\0\a\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\2\15\0\1\0X\2\tÄ6\2\3\0009\2\4\0029\2\5\2'\4\6\0009\5\a\1'\6\b\0&\4\6\0045\5\t\0B\2\3\1K\0\1\0\1\0\1\vdetach\2\b' &\18absolute_path\15xdg-open '\rjobstart\afn\bvim\23get_node_at_cursor\18nvim-tree.lib\frequireñ\2\0\1\n\6\b\0001+\1\2\0006\2\0\0009\4\1\0B\2\2\4X\5\19Ä9\a\2\6\15\0\a\0X\b\tÄ9\a\1\6\21\a\a\0)\b\0\0\1\b\a\0X\a\4Ä-\a\0\0009\a\3\a\18\t\6\0B\a\2\1-\a\1\0009\b\4\0068\a\b\a\15\0\a\0X\b\2Ä+\1\1\0X\2\2ÄE\5\3\3R\5Î\15\0\1\0X\2\19Ä-\2\2\0009\2\5\2\4\0\2\0X\2\15Ä-\2\3\0\15\0\2\0X\2\5Ä-\2\4\0009\3\6\0008\2\3\2\15\0\2\0X\3\5Ä-\2\2\0009\2\a\2\18\4\0\0B\2\2\0011\5\2\0+\2\2\0L\2\2\0+\2\1\0L\2\2\0\6¿\3¿\1¿\0\0\4¿\5Ä\15close_node\tname\tTree\18absolute_path\frecurse\topen\fentries\vipairsº\3\1\0\14\2\16\0B6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2B\2\1\0024\3\0\0004\4\0\0006\5\6\0\18\a\2\0B\5\2\4X\b\22Ä6\n\3\0009\n\4\n9\n\a\n\18\f\t\0B\n\2\2\15\0\n\0X\v\15Ä6\n\3\0009\n\4\n9\n\b\n\18\f\t\0'\r\t\0B\n\3\2\15\0\n\0X\v\aÄ6\n\3\0009\n\4\n9\n\n\n\18\f\t\0B\n\2\2+\v\2\0<\v\n\3E\b\3\3R\bË-\5\0\0\15\0\5\0X\6\tÄ6\5\6\0-\a\1\0009\a\v\aB\5\2\4X\b\2Ä+\n\2\0<\n\t\4E\b\3\3R\b¸+\5\1\0004\6\0\0003\a\r\0=\a\f\0069\a\f\0069\t\14\1B\a\2\1\15\0\5\0X\a\3Ä9\a\15\0+\t\1\0B\a\2\0012\0\0ÄK\0\1\0\0¿\0\0\14find_file\tTree\0\frecurse\20cfwob_whitelist\22nvim_buf_get_name\14buflisted\24nvim_buf_get_option\23nvim_buf_is_loaded\vipairs\19nvim_list_bufs\bapi\bvim\18nvim-tree.lib\14nvim-tree\frequire^\1\1\4\1\5\1\r6\1\0\0009\1\1\0019\1\2\1\b\1\0\0X\1\1Ä2\0\6Ä6\1\0\0009\1\3\0013\3\4\0B\1\2\0012\0\0ÄK\0\1\0K\0\1\0\1¿\0\rschedule\20nvim_tree_ready\6g\bvim\2Ç\1\0\0\3\1\6\0\16-\0\0\0009\0\0\0\15\0\0\0X\1\aÄ6\0\1\0009\0\2\0'\2\3\0B\0\2\1-\0\0\0+\1\1\0=\1\0\0006\0\1\0009\0\4\0)\1\1\0=\1\5\0K\0\1\0\1¿\20nvim_tree_ready\6g\20NvimTreeRefresh\bcmd\bvim\19refresh_needed‹\25\1\0\n\0~\2î\0026\0\0\0'\2\1\0B\0\2\0024\1\0\0005\2\3\0=\2\2\0016\2\4\0009\2\5\2)\3\0\0=\3\6\0026\2\4\0009\2\5\2)\3\1\0=\3\a\0026\2\4\0009\2\5\2)\3\0\0=\3\b\0026\2\4\0009\2\5\2)\3\30\0=\3\t\0026\2\4\0009\2\5\2)\3\1\0=\3\n\0026\2\4\0009\2\5\2)\3\1\0=\3\v\0026\2\4\0009\2\5\2)\3\0\0=\3\f\0026\2\4\0009\2\5\2)\3\0\0=\3\r\0026\2\4\0009\2\5\2)\3\0\0=\3\14\0026\2\4\0009\2\5\2)\3\1\0=\3\15\0026\2\4\0009\2\5\2)\3\0\0=\3\16\0026\2\4\0009\2\5\2)\3\1\0=\3\17\0026\2\4\0009\2\5\2)\3\1\0=\3\18\0026\2\4\0009\2\5\0024\3\0\0=\3\19\0026\2\4\0009\2\5\2)\3\1\0=\3\20\0026\2\4\0009\2\5\2'\3\22\0=\3\21\0026\2\4\0009\2\5\2)\3\0\0=\3\23\0026\2\4\0009\2\5\2)\3\0\0=\3\24\0026\2\4\0009\2\5\2)\3\1\0=\3\25\0026\2\4\0009\2\5\0026\3\27\0009\3\28\3'\5\29\0'\6\30\0'\a\31\0'\b \0'\t!\0&\5\t\0056\6\4\0009\6\5\0069\6\t\6\23\6\0\0066\a\4\0009\a\5\a9\a\t\a\23\a\1\aB\3\4\2=\3\26\0026\2\4\0009\2\5\0025\3$\0005\4#\0=\4%\0035\4&\0=\4'\3=\3\"\0026\2\4\0009\2\5\0025\3)\0=\3(\0026\2\4\0009\2\5\0025\3+\0005\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\3=\3*\0026\2\0\0'\0042\0B\2\2\0029\0023\0025\0035\0\18\4\2\0'\0064\0B\4\2\2=\0046\3\18\4\2\0'\0064\0B\4\2\2=\0047\3\18\4\2\0'\0068\0B\4\2\2=\0049\3\18\4\2\0'\0068\0B\4\2\2=\4:\3\18\4\2\0'\6;\0B\4\2\2=\4<\3\18\4\2\0'\6=\0B\4\2\2=\4>\3\18\4\2\0'\6?\0B\4\2\2=\4@\3\18\4\2\0'\6A\0B\4\2\2=\4B\3\18\4\2\0'\6A\0B\4\2\2=\4C\3\18\4\2\0'\6D\0B\4\2\2=\4E\3\18\4\2\0'\6A\0B\4\2\2=\4F\3\18\4\2\0'\0064\0B\4\2\2=\4G\3\18\4\2\0'\6H\0B\4\2\2=\4I\3\18\4\2\0'\6J\0B\4\2\2=\4K\3\18\4\2\0'\6L\0B\4\2\2=\4M\3\18\4\2\0'\6N\0B\4\2\2=\4O\3\18\4\2\0'\6P\0B\4\2\2=\4Q\3\18\4\2\0'\6R\0B\4\2\2=\4S\3\18\4\2\0'\6T\0B\4\2\2=\4U\3\18\4\2\0'\6V\0B\4\2\2=\4W\3\18\4\2\0'\6X\0B\4\2\2=\4Y\3\18\4\2\0'\6Z\0B\4\2\2=\4[\3\18\4\2\0'\6\\\0B\4\2\2=\4]\3\18\4\2\0'\6^\0B\4\2\2=\4_\3\18\4\2\0'\6`\0B\4\2\2=\4a\3\18\4\2\0'\6b\0B\4\2\2=\4c\3\18\4\2\0'\6d\0B\4\2\2=\4e\3\18\4\2\0'\6f\0B\4\2\2=\4g\3\18\4\2\0'\6h\0B\4\2\2=\4i\0033\4j\0003\5l\0=\5k\0013\5n\0=\5m\0013\5p\0=\5o\0013\5r\0=\5q\0013\5t\0=\5s\0019\5u\0003\av\0B\5\2\0016\5\4\0009\5w\0059\5x\5'\ay\0+\b\1\0B\5\3\0016\5\4\0009\5w\0059\5x\5'\az\0+\b\1\0B\5\3\0016\5{\0009\5|\5=\1}\0052\0\0ÄK\0\1\0\14nvim_tree\vConfig\a_G’\2    augroup Config.nvim_tree\n      au!\n      au FileType NvimTree lua Config.nvim_tree.custom_setup()\n      \" au BufEnter * lua Config.nvim_tree.global_bufenter()\n      au BufDelete * lua Config.nvim_tree.close_folders_without_open_buffers(true)\n      au BufWritePost * lua require'nvim-tree.lib'.refresh_tree(true)\n    augroup END\n    ‚\1    hi! link NvimTreeGitNew diffAdded\n    hi! link NvimTreeGitDeleted diffRemoved\n    \" hi! link NvimTreeGitDirty GitDirty\n    hi! link NvimTreeGitStaged diffAdded\n    \" hi! link NvimTreeFolderIcon NvimTreeFolderName\n    \14nvim_exec\bapi\0\23on_nvim_tree_ready\0'close_folders_without_open_buffers\0\rxdg_open\0\20toggle_no_focus\0\nfocus\0\17custom_setup\0\6q\nclose\6-\vdir_up\a]c\18next_git_item\a[c\18prev_git_item\6p\npaste\6y\tcopy\6x\bcut\n<C-r>\16full_rename\6r\vrename\6d\vremove\6a\vcreate\6R\frefresh\6H\20toggle_dotfiles\6I\19toggle_ignored\n<Tab>\fpreview\6J\17last_sibling\6K\18first_sibling\6l\6h\6P\16parent_node\v<S-CR>\t<BS>\15close_node\6s\nsplit\6v\vvsplit\n<C-t>\vtabnew\n<C-]>\19<2-RightMouse>\acd\18<2-LeftMouse>\t<CR>\1\0\1\6o):lua Config.nvim_tree.xdg_open()<CR>\tedit\23nvim_tree_callback\21nvim-tree.config\blsp\1\0\4\thint\bÔÅ™\fwarning\bÔÅ±\tinfo\bÔÅö\nerror\bÔÅó\vfolder\1\0\b\topen\bÔêì\15arrow_open\bÔëº\fsymlink\bÔíÇ\nempty\bÔùï\15empty_open\bÔùï\fdefault\bÔêì\17symlink_open\bÔíÇ\17arrow_closed\bÔë†\bgit\1\0\a\runstaged\bÔëô\14untracked\bÔëó\frenamed\bÔëö\fdeleted\bÔëò\runmerged\bÔêá\fignored\b‚óå\vstaged\bÔò¥\1\0\2\fsymlink\bÔíÅ\fdefault\bÔÉ∂\20nvim_tree_icons\1\0\4\18folder_arrows\3\1\bgit\3\1\ffolders\3\1\nfiles\3\1\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vpacker\aqf\fOutline$nvim_tree_window_picker_exclude\22:s?\\v(.*)?ÔêÅ \\1?\31:s?\\v^¬ß¬ß.*\\/(.*$)?‚Ä¶\\1?&:s?\\v^¬ß¬ß.{-}(\\/.{1,%d}$)?‚Ä¶\\1?\25:s?\\v(.{%d})?¬ß¬ß\\1?\a:~\vformat\vstring#nvim_tree_root_folder_modifier\25nvim_tree_update_cwd\28nvim_tree_hijack_cursor\23nvim_tree_tab_open\tleft\19nvim_tree_side\"nvim_tree_disable_keybindings\28nvim_tree_special_files\21nvim_tree_follow\30nvim_tree_folder_devicons\28nvim_tree_disable_netrw\27nvim_tree_hijack_netrw\27nvim_tree_quit_on_open\25nvim_tree_auto_close\24nvim_tree_auto_open\30nvim_tree_lsp_diagnostics\26nvim_tree_group_empty\20nvim_tree_width\24nvim_tree_gitignore\21nvim_tree_git_hl\29nvim_tree_indent_markers\6g\bvim\1\2\0\0\t.git\20cfwob_whitelist\21nvim-tree.events\frequire\14\18\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n£\5\0\0\6\0\29\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\16\0005\4\14\0005\5\15\0=\5\f\4=\4\17\0035\4\18\0005\5\19\0=\5\20\0045\5\21\0=\5\22\4=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\28\2B\0\2\1K\0\1\0\16textobjects\26context_commentstring\1\0\1\venable\2\fautotag\1\0\1\venable\2\tswap\18swap_previous\1\0\1\14<leader>A\21@parameter.inner\14swap_next\1\0\1\14<leader>a\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\1\0\4\aia\21@parameter.inner\aif\20@function.inner\aaa\21@parameter.outer\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_decremental\f<S-TAB>\21node_incremental\n<TAB>\22scope_incremental\t<CR>\19init_selection\t<CR>\1\0\1\venable\2\14highlight\fdisable\1\2\0\0\bvim\1\0\1\venable\2\vindent\1\0\1\venable\1\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\2\n”\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\0\vcolors\1\b\0\0\f#bf616a\f#d08770\f#ebcb8b\f#a3be8c\f#88c0d0\f#5e81ac\f#b48ead\1\0\3\venable\2\19max_file_lines\3‹\v\18extended_mode\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    after = { "diffview.nvim", "lir.nvim", "lsp-trouble.nvim", "nvim-bufferline.lua", "nvim-spectre", "telescope.nvim" },
    loaded = true,
    only_config = true
  },
  ["oceanic-primal-vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/oceanic-primal-vim",
    url = "https://github.com/barlog-m/oceanic-primal-vim"
  },
  ["onedarkpro.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/palenight.vim",
    url = "https://github.com/Cybolic/palenight.vim"
  },
  playground = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["predawn.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/predawn.vim",
    url = "https://github.com/juanedi/predawn.vim"
  },
  ["quantum.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/quantum.vim",
    url = "https://github.com/kjssad/quantum.vim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/sindrets/rose-pine-neovim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["seoul256.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/seoul256.vim",
    url = "https://github.com/junegunn/seoul256.vim"
  },
  ["smyck.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/smyck.vim",
    url = "https://github.com/dim13/smyck.vim"
  },
  ["startuptime.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/startuptime.vim",
    url = "https://github.com/tweekmonster/startuptime.vim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nn\0\2\a\4\2\1\16\14\0\1\0X\2\1ÄK\0\1\0009\2\0\1*\3\0\0\1\3\2\0X\2\2ÄK\0\1\0X\2\6Ä-\2\0\0009\2\1\2-\4\1\0-\5\2\0-\6\3\0B\2\4\1K\0\1\0\0\0\0Ä\1¿\2Ä\27buffer_previewer_maker\tsize¿ö\fi\1\3\a\1\6\0\17\14\0\2\0X\3\1Ä4\2\0\0006\3\0\0009\3\1\0039\3\2\3\18\5\0\0B\3\2\2\18\0\3\0006\3\0\0009\3\3\0039\3\4\3\18\5\0\0003\6\5\0B\3\3\0012\0\0ÄK\0\1\0\2¿\0\ffs_stat\tloop\vexpand\afn\bvimN\0\0\6\1\4\0\t6\0\0\0009\0\1\0'\2\2\0\18\4\2\0009\2\3\2-\5\0\0B\2\3\0A\0\0\1K\0\1\0\1¿\vformat\22DiffviewOpen %s^!\bcmd\bvim¢\1\1\0\6\1\t\0\20-\0\0\0009\0\0\0B\0\1\0029\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0+\5\2\0B\2\3\0016\2\2\0009\2\5\2'\4\6\0B\2\2\0016\2\2\0009\2\a\0023\4\b\0B\2\2\0012\0\0ÄK\0\1\0\1¿\0\rschedule\15stopinsert\bcmd\19nvim_win_close\bapi\bvim\nvalue\23get_selected_entryÙ\f\1\0\f\0D\0o6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0023\3\4\0006\4\0\0'\6\5\0B\4\2\0029\4\6\0045\6-\0005\a\b\0005\b\a\0=\b\t\a5\b\n\0005\t\v\0=\t\f\b5\t\r\0=\t\14\b=\b\15\a5\b\16\0=\b\17\a6\b\0\0'\n\18\0B\b\2\0029\b\19\b=\b\20\a4\b\0\0=\b\21\a6\b\0\0'\n\18\0B\b\2\0029\b\22\b=\b\23\a4\b\0\0=\b\24\a5\b\25\0=\b\26\a5\b\27\0=\b\28\a6\b\0\0'\n\3\0B\b\2\0029\b\29\b9\b\30\b=\b\31\a6\b\0\0'\n\3\0B\b\2\0029\b \b9\b\30\b=\b!\a6\b\0\0'\n\3\0B\b\2\0029\b\"\b9\b\30\b=\b#\a=\3$\a5\b)\0005\t'\0009\n%\0009\v&\0 \n\v\n=\n(\t=\t*\b4\t\0\0=\t+\b=\b,\a=\a.\0065\a0\0005\b/\0=\b1\a5\b2\0=\b3\a5\b8\0005\t7\0005\n5\0003\v4\0=\v6\n=\n*\t=\t,\b=\b9\a=\a:\0065\a<\0005\b;\0=\b=\a5\b?\0005\t>\0=\t@\b=\bA\a=\aB\6B\4\2\0016\4\0\0'\6\5\0B\4\2\0029\4C\4'\6=\0B\4\2\0016\4\0\0'\6\5\0B\4\2\0029\4C\4'\6A\0B\4\2\0012\0\0ÄK\0\1\0\19load_extension\15extensions\16media_files\14filetypes\1\0\1\rfind_cmd\afd\1\b\0\0\bpng\twebp\bjpg\tjpeg\bmp4\twebm\bpdf\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\1\nfuzzy\2\fpickers\16git_commits\1\0\0\1\0\0\f<C-M-d>\1\0\0\0\14git_files\1\0\1\18results_title\1\15find_files\1\0\0\1\0\1\18results_title\1\rdefaults\1\0\0\rmappings\6n\6i\1\0\0\n<c-q>\1\0\0\16open_qflist\19send_to_qflist\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\17path_display\1\2\0\0\rabsolute\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\1\vmirror\1\1\0\3\nwidth\4\0ÄÄ†ˇ\3\19preview_cutoff\3x\20prompt_position\btop\22vimgrep_arguments\1\0\v\rwinblend\3\0\ruse_less\2\20layout_strategy\15horizontal\21sorting_strategy\14ascending\23selection_strategy\nreset\18results_title\1\17initial_mode\vinsert\17entry_prefix\a  \20selection_caret\t‚û§ \18prompt_prefix\n Ôë´ \19color_devicons\2\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\0\25telescope.previewers\28telescope.actions.state\22telescope.actions\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tender.vim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/tender.vim",
    url = "https://github.com/jacoborus/tender.vim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-colors-xcode"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-colors-xcode",
    url = "https://github.com/arzg/vim-colors-xcode"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-horizon"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-horizon",
    url = "https://github.com/ntk148v/vim-horizon"
  },
  ["vim-hybrid"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-hybrid",
    url = "https://github.com/w0ng/vim-hybrid"
  },
  ["vim-illuminate"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-log-highlighting"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-log-highlighting",
    url = "https://github.com/MTDL9/vim-log-highlighting"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-monokai-pro"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-monokai-pro",
    url = "https://github.com/phanviet/vim-monokai-pro"
  },
  ["vim-one"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-one",
    url = "https://github.com/rakr/vim-one"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  vimux = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vimux",
    url = "https://github.com/preservim/vimux"
  },
  vimwiki = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["winshift.nvim"] = {
    config = { "\27LJ\2\n¿\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\23moving_win_options\1\0\4\15cursorline\1\16colorcolumn\5\17cursorcolumn\1\twrap\1\1\0\2\25highlight_moving_win\2\21focused_hl_group\21LspReferenceRead\nsetup\rwinshift\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/winshift.nvim",
    url = "https://github.com/sindrets/winshift.nvim"
  },
  ["zenbones.nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/zenbones.nvim",
    url = "https://github.com/mcchrish/zenbones.nvim"
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/zephyr-nvim",
    url = "https://github.com/glepnir/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: dashboard-nvim
time([[Setup for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nÅ\2\0\1\14\0\f\0+4\1\0\0)\2ˇˇ6\3\0\0\18\5\0\0B\3\2\4X\6\rÄ6\b\2\0009\b\3\b9\b\4\b9\n\5\a:\n\1\nB\b\2\2=\b\1\a6\b\6\0009\b\a\b\18\n\2\0009\v\1\aB\b\3\2\18\2\b\0E\6\3\3R\6Ò6\3\0\0\18\5\0\0B\3\2\4X\6\15Ä9\b\5\a9\t\5\a:\t\1\t6\n\b\0009\n\t\n'\f\n\0009\r\1\a!\r\r\2B\n\3\2&\t\n\t>\t\1\b'\b\v\0\18\t\6\0&\b\t\b<\a\b\1E\6\3\3R\6ÔL\1\2\0\6k\6 \brep\vstring\bmax\tmath\16description\20strdisplaywidth\afn\bvim\16display_len\vipairs«\r\1\0\b\0\31\0P3\0\0\0006\1\1\0009\1\2\1'\2\4\0=\2\3\0016\1\1\0009\1\5\0019\1\6\1)\3\0\0B\1\2\2)\2\25\0\1\1\2\0X\2\5Ä6\2\1\0009\2\2\0024\3\0\0=\3\a\2X\2\4Ä6\2\1\0009\2\2\0025\3\b\0=\3\a\0026\2\1\0009\2\t\0026\4\1\0009\4\5\0049\4\n\4'\6\v\0+\a\2\0B\4\3\2'\5\f\0B\2\3\0026\3\1\0009\3\2\0034\4\3\0:\5\2\2>\5\1\4=\4\r\0034\3\b\0005\4\15\0005\5\14\0=\5\16\4>\4\1\0035\4\18\0005\5\17\0=\5\16\4>\4\2\0035\4\20\0005\5\19\0=\5\16\4>\4\3\0035\4\22\0005\5\21\0=\5\16\4>\4\4\0035\4\24\0005\5\23\0=\5\16\4>\4\5\0035\4\26\0005\5\25\0=\5\16\4>\4\6\0035\4\28\0005\5\27\0=\5\16\4>\4\a\0036\4\1\0009\4\2\4\18\5\0\0\18\a\3\0B\5\2\2=\5\29\0046\4\1\0009\4\5\0049\4\n\4'\6\30\0+\a\1\0B\4\3\1K\0\1\0t    augroup DashboardConfig\n      au!\n      au FileType dashboard nnoremap <buffer> q :q<CR>\n    augroup END\n  \29dashboard_custom_section\1\0\1\fcommand\20Telescope marks\1\2\0\0\22Ôë°  Jump to Mark\1\0\1\fcommand\24Telescope live_grep\1\2\0\0\19ÔûÉ  Find Word\1\0\1\fcommand\16SessionLoad\1\2\0\0\27Ôë§  Load Last Session\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0\29ÔÉÖ  Recently Used Files\1\0\1\fcommand\25Telescope git_status\1\2\0\0\20Ôû°  Git Status\1\0\1\fcommand3lua require\"nvim-config.lib\".workspace_files()\1\2\0\0\19Ôë´  Find File\16description\1\0\1\fcommand\21DashboardNewFile\1\2\0\0\18ÔÖõ  New File\28dashboard_custom_footer\6\n\fversion\14nvim_exec\nsplit\1\a\0\0D  ‚£†‚£æ‚£Ñ‚†Ä‚†Ä‚†Ä‚¢∞‚£Ñ‚†Ä                                  à\1‚†Ä‚£æ‚£ø‚£ø‚£ø‚£Ü‚†Ä‚†Ä‚¢∏‚£ø‚£∑ ‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚¢ø‚°ø‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä ‚†Ä‚†Ä‚†Äà\1 ‚£ø‚£ø‚°ü‚¢ø‚£ø‚£ß‚°Ä‚¢∏‚£ø‚£ø ‚†Ä‚£†‚†¥‚†∂‚†¶‚°Ñ‚†Ä‚¢Ä‚°§‚†∂‚†∂‚£§‚°Ä‚£∂‚£¶‚†Ä‚†Ä‚¢†‚£∂‚°ñ‚£∂‚£∂‚†Ä‚£∂‚£¶‚£∂‚£∂‚£¶‚£†‚£∂‚£∂‚£∂‚°Ñà\1 ‚£ø‚£ø‚°á‚†à‚¢ª‚£ø‚£∑‚£º‚£ø‚£ø ‚¢∏‚£á‚£Ä‚£Ä‚£Ä‚£π‚¢†‚°ü‚†Ä‚†Ä‚†Ä‚†à‚£∑‚†ò‚£ø‚£á‚†Ä‚£æ‚°ø‚†Ä‚£ø‚£ø‚†Ä‚£ø‚£ø‚†Ä‚†Ä‚£ø‚£ø‚†Ä‚†Ä‚£ø‚£øà\1 ‚¢ø‚£ø‚°á‚†Ä‚†Ä‚†π‚£ø‚£ø‚£ø‚°ø ‚¢∏‚°Ñ‚†Ä‚†Ä‚†Ä‚†Ä‚†∏‚£á‚†Ä‚†Ä‚†Ä‚†Ä‚£ø‚†Ä‚†π‚£ø‚£º‚£ø‚†Å‚†Ä‚£ø‚£ø‚†Ä‚£ø‚£ø‚†Ä‚†Ä‚£ø‚£ø‚†Ä‚†Ä‚£ø‚£øà\1 ‚†Ä‚†ô‚†á‚†Ä‚†Ä‚†Ä‚†ò‚†ø‚†ã‚†Ä ‚†Ä‚†õ‚†¶‚†§‚†¥‚†ñ‚†Ä‚†ô‚†¶‚†§‚†§‚†û‚†Å‚†Ä‚†Ä‚†ª‚†ø‚†É‚†Ä‚†Ä‚†ø‚†ø‚†Ä‚†ø‚†ø‚†Ä‚†Ä‚†ø‚†ø‚†Ä‚†Ä‚†ø‚†ø\28dashboard_custom_header\24nvim_win_get_height\bapi\14telescope dashboard_default_executive\6g\bvim\0\0", "setup", "dashboard-nvim")
time([[Setup for dashboard-nvim]], false)
time([[packadd for dashboard-nvim]], true)
vim.cmd [[packadd dashboard-nvim]]
time([[packadd for dashboard-nvim]], false)
-- Setup for: vim-illuminate
time([[Setup for vim-illuminate]], true)
try_loadstring("\27LJ\2\n˝\1\0\0\2\0\6\0\r6\0\0\0009\0\1\0)\1˙\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1\f\0\0\aqf\14dashboard\vpacker\17NeogitStatus\20TelescopePrompt\rNvimTree\fTrouble\18DiffviewFiles\24DiffviewFileHistory\fOutline\blir\27Illuminate_ftblacklist$Illuminate_highlightUnderCursor\21Illuminate_delay\6g\bvim\0", "setup", "vim-illuminate")
time([[Setup for vim-illuminate]], false)
time([[packadd for vim-illuminate]], true)
vim.cmd [[packadd vim-illuminate]]
time([[packadd for vim-illuminate]], false)
-- Setup for: symbols-outline.nvim
time([[Setup for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\nﬁ\3\0\0\4\0\n\0\0156\0\0\0009\0\1\0005\1\3\0005\2\4\0=\2\5\0014\2\0\0=\2\6\1=\1\2\0006\0\0\0009\0\a\0009\0\b\0'\2\t\0+\3\1\0B\0\3\1K\0\1\0≤\1    hi! link FocusedSymbol Visual\n    augroup SymbolsOutlineConfig\n      au!\n      au FileType Outline set nolist winfixwidth winfixheight signcolumn=no\n    augroup END\n    \14nvim_exec\bapi\18lsp_blacklist\fkeymaps\1\0\6\17hover_symbol\14<C-space>\19focus_location\6o\nclose\6q\18goto_location\t<Cr>\17code_actions\14<leader>.\18rename_symbol\6r\1\0\4\27highlight_hovered_item\2\16show_guides\2\rposition\nright\17auto_preview\1\20symbols_outline\6g\bvim\0", "setup", "symbols-outline.nvim")
time([[Setup for symbols-outline.nvim]], false)
time([[packadd for symbols-outline.nvim]], true)
vim.cmd [[packadd symbols-outline.nvim]]
time([[packadd for symbols-outline.nvim]], false)
-- Setup for: vim-test
time([[Setup for vim-test]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0!let test#strategy = \"vimux\"\n\bcmd\bvim\0", "setup", "vim-test")
time([[Setup for vim-test]], false)
time([[packadd for vim-test]], true)
vim.cmd [[packadd vim-test]]
time([[packadd for vim-test]], false)
-- Setup for: emmet-vim
time([[Setup for emmet-vim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\n<C-Z>\26user_emmet_leader_key\6g\bvim\0", "setup", "emmet-vim")
time([[Setup for emmet-vim]], false)
time([[packadd for emmet-vim]], true)
vim.cmd [[packadd emmet-vim]]
time([[packadd for emmet-vim]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\nÁ\1\0\0\4\0\a\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0+\3\1\0B\0\3\0016\0\0\0009\0\4\0'\1\6\0=\1\5\0K\0\1\0\24MkdpOpenInNewWindow\21mkdp_browserfunc\6gfunction! MkdpOpenInNewWindow(url)\nlua require'nvim-config.lib'.mkdp_open_in_new_window(vim.fn.eval(\"a:url\"))\nendfunction\n\14nvim_exec\bapi\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
time([[packadd for markdown-preview.nvim]], true)
vim.cmd [[packadd markdown-preview.nvim]]
time([[packadd for markdown-preview.nvim]], false)
-- Setup for: FixCursorHold.nvim
time([[Setup for FixCursorHold.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1˙\0=\1\2\0K\0\1\0\26cursorhold_updatetime\6g\bvim\0", "setup", "FixCursorHold.nvim")
time([[Setup for FixCursorHold.nvim]], false)
time([[packadd for FixCursorHold.nvim]], true)
vim.cmd [[packadd FixCursorHold.nvim]]
time([[packadd for FixCursorHold.nvim]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nÅ\a\0\0\2\0\15\0!6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0+\1\1\0=\1\6\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\b\0006\0\0\0009\0\1\0005\1\n\0=\1\t\0006\0\0\0009\0\1\0005\1\f\0=\1\v\0006\0\0\0009\0\1\0005\1\14\0=\1\r\0K\0\1\0\1\20\0\0\nclass\vreturn\rfunction\vmethod\b^if\v^while\16jsx_element\t^for\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement&indent_blankline_context_patterns\1\22\0\0\thelp\rstartify\14dashboard\vpacker\17NeogitStatus\21NeogitCommitView\16NeogitPopup\18NeogitLogView\24NeogitCommitMessage\bman\18sagasignature\14sagahover\18lspsagafinder\22LspSagaCodeAction\20TelescopePrompt\rNvimTree\fTrouble\18DiffviewFiles\24DiffviewFileHistory\fOutline\flspinfo&indent_blankline_filetype_exclude\1\2\0\0\rterminal%indent_blankline_buftype_exclude*indent_blankline_show_current_context4indent_blankline_show_trailing_blankline_indent$indent_blankline_use_treesitter\b‚†Ä*indent_blankline_space_char_blankline\b‚ñè\26indent_blankline_char\6g\bvim\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
time([[packadd for indent-blankline.nvim]], true)
vim.cmd [[packadd indent-blankline.nvim]]
time([[packadd for indent-blankline.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-pqf.git
time([[Config for nvim-pqf.git]], true)
try_loadstring("\27LJ\2\nq\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\0\1\0\4\tinfo\bÔÅö\fwarning\bÔÅ±\nerror\bÔÅó\thint\bÔÅ™\nsetup\bpqf\frequire\0", "config", "nvim-pqf.git")
time([[Config for nvim-pqf.git]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n≥\2\0\0\4\0\v\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0B\0\3\1K\0\1\0\1\0\t\tmode\15background\rRRGGBBAA\2\vRRGGBB\2\bRGB\2\vcss_fn\1\vhsl_fn\1\vrgb_fn\1\nnames\1\bcss\1\tsass\1\0\5\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\vcss_fn\2\tscss\1\0\5\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\vcss_fn\2\bcss\1\0\5\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\vcss_fn\2\1\3\0\0\6*\t!git\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: winshift.nvim
time([[Config for winshift.nvim]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\23moving_win_options\1\0\4\15cursorline\1\16colorcolumn\5\17cursorcolumn\1\twrap\1\1\0\2\25highlight_moving_win\2\21focused_hl_group\21LspReferenceRead\nsetup\rwinshift\frequire\0", "config", "winshift.nvim")
time([[Config for winshift.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\nœ\14\0\0\a\0=\0d6\0\0\0009\0\1\0009\0\2\0'\2\3\0005\3\4\0B\0\3\0016\0\5\0'\2\6\0B\0\2\0029\1\a\0005\2\t\0005\3\n\0=\3\v\2=\2\b\0019\1\f\0004\2\3\0005\3\r\0005\4\14\0=\4\15\0035\4\16\0=\4\17\3>\3\1\0025\3\18\0>\3\2\2=\2\b\0016\1\5\0'\3\19\0B\1\2\0029\1\20\0015\3\22\0005\4\21\0=\4\23\0035\4\25\0005\5\24\0=\5\26\4=\4\27\0035\4 \0004\5\5\0005\6\28\0>\6\1\0055\6\29\0>\6\2\0055\6\30\0>\6\3\0055\6\31\0>\6\4\5=\5!\4=\4\"\0035\4$\0005\5#\0=\5!\4=\4%\0035\4&\0005\5(\0005\6'\0=\6)\5=\5\27\4=\4*\0035\4+\0=\4,\3B\1\2\0019\1\a\0005\2.\0004\3\3\0006\4/\0009\0040\4'\0061\0B\4\2\2'\0052\0&\4\5\4>\4\1\3=\3\v\2=\2-\0019\1\f\0004\2\4\0005\0034\0006\4\0\0009\4\1\0049\0045\4B\4\1\2=\0046\3>\3\1\0025\0037\0006\4\5\0'\0068\0B\4\2\0029\0049\4=\4:\3>\3\2\0025\3;\0006\4\0\0009\4\1\0049\0045\4B\4\1\2=\0046\0035\4<\0=\4\v\3>\3\3\2=\0023\1K\0\1\0\1\6\0\0\20${fileBasename}\14--verbose\a-i\15--no-cache\15--watchAll\1\0\a\tname\28Jest watch current file\fprogram2${workspaceFolder}/node_modules/jest/bin/jest\ttype\nnode2\frequest\vlaunch\fconsole\23integratedTerminal\rprotocol\14inspector\27internalConsoleOptions\14neverOpen\14processId\17pick_process\14dap.utils\1\0\3\tname\22Attach to process\ttype\nnode2\frequest\vattach\bcwd\vgetcwd\1\0\a\frequest\vlaunch\ttype\nnode2\fprogram\f${file}\rprotocol\14inspector\15sourceMaps\2\tname\vLaunch\fconsole\23integratedTerminal\20typescriptreact1/git/vscode-node-debug2/out/src/nodeDebug.js\tHOME\vgetenv\aos\1\0\2\fcommand\tnode\ttype\15executable\nnode2\fwindows\1\0\1\vindent\3\1\rfloating\nclose\1\0\0\1\3\0\0\6q\n<Esc>\1\0\0\ttray\1\0\2\rposition\vbottom\tsize\3\n\1\2\0\0\trepl\fsidebar\relements\1\0\2\rposition\tleft\tsize\3(\1\0\2\aid\fwatches\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vstacks\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\16breakpoints\tsize\4\0ÄÄ¿˛\3\1\0\2\aid\vscopes\tsize\4\0ÄÄ¿˛\3\rmappings\vexpand\1\0\4\topen\6o\tedit\6e\trepl\6r\vremove\6d\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\14collapsed\b‚ñ∏\rexpanded\b‚ñæ\nsetup\ndapui\1\0\5\frequest\vlaunch\ttype\bphp\tname!Launch currently open script\tport\3´F\bcwd\21${workspaceRoot}\vignore\1\3\0\0#**/silverstripe-cache/**/*.php\23**/vendor/**/*.php\17pathMappings\1\0\1\30/srv/archipro/www/marwan/\24${workspaceFolder}/\1\0\6\frequest\vlaunch\ttype\bphp\tname\22Listen for XDebug\tport\3´F\16stopOnEntry\1\rhostname\f0.0.0.0\19configurations\targs\1\2\0\0=/home/marwan38/programs/vscode-php-debug/out/phpDebug.js\1\0\2\fcommand\tnode\ttype\15executable\bphp\radapters\bdap\frequire\1\0\4\nnumhl\5\ttext\bÔó£\vlinehl\5\vtexthl\28LspDiagnosticsSignError\18DapBreakpoint\16sign_define\afn\bvim\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nÅ\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\29html_break_line_filetype\1\6\0\0\thtml\bvue\20typescriptreact\vsvelte\20javascriptreact\21disable_filetype\1\0\2\30enable_check_bracket_line\2\22ignored_next_char\19[%w%%%'%[%\"%.]\1\2\0\0\20TelescopePrompt\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n®\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\roverride\1\0\1\fdefault\2\20lir_folder_icon\1\0\0\1\0\3\ticon\bÔêì\tname\18LirFolderNode\ncolor\f#7ebae4\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
try_loadstring("\27LJ\2\n”\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\0\vcolors\1\b\0\0\f#bf616a\f#d08770\f#ebcb8b\f#a3be8c\f#88c0d0\f#5e81ac\f#b48ead\1\0\3\venable\2\19max_file_lines\3‹\v\18extended_mode\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n¢\5\0\0\5\0\27\00166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1)\0¥\0005\1\b\0005\2\6\0005\3\a\0>\0\3\3>\3\2\2=\2\t\0015\2\n\0005\3\v\0>\0\3\3>\3\2\2=\2\f\0015\2\r\0005\3\14\0\24\4\0\0>\4\3\3>\3\2\2=\2\15\0015\2\16\0005\3\17\0\24\4\0\0>\4\3\3>\3\2\2=\2\18\0015\2\19\0004\3\3\0>\0\1\3>\3\2\2=\2\20\0015\2\21\0004\3\3\0>\0\1\3>\3\2\2=\2\22\0015\2\23\0004\3\3\0>\0\1\3>\3\2\2=\2\24\0016\2\0\0'\4\25\0B\2\2\0029\2\26\2\18\4\1\0B\2\2\1K\0\1\0\17set_mappings\21neoscroll.config\azb\1\2\0\0\azb\azz\1\2\0\0\azz\azt\1\2\0\0\azt\n<C-f>\1\3\0\0#vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-b>\1\3\0\0$-vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-d>\1\3\0\0 math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\n<C-u>\1\0\0\1\3\0\0!-math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\rmappings\1\0\5\16hide_cursor\2\25cursor_scrolls_alone\2\22respect_scrolloff\1\rstop_eof\2\20easing_function\14quadratic\1\b\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\azt\azz\azb\nsetup\14neoscroll\frequire\4\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\nÉ\4\0\0\3\1'\0^5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\0\1=\1\3\0-\1\0\0009\1\0\1=\1\4\0-\1\0\0009\1\0\1=\1\5\0-\1\0\0009\1\0\1=\1\6\0-\1\0\0009\1\0\1=\1\a\0-\1\0\0009\1\0\1=\1\b\0-\1\0\0009\1\0\1=\1\t\0-\1\0\0009\1\n\1=\1\v\0-\1\0\0009\1\n\1=\1\f\0-\1\0\0009\1\n\1=\1\r\0-\1\0\0009\1\n\1=\1\14\0-\1\0\0009\1\n\1=\1\15\0-\1\0\0009\1\n\1=\1\16\0-\1\0\0009\1\17\1=\1\18\0-\1\0\0009\1\17\1=\1\19\0-\1\0\0009\1\17\1=\1\20\0-\1\0\0009\1\21\1=\1\22\0-\1\0\0009\1\21\1=\1\23\0-\1\0\0009\1\21\1=\1\24\0-\1\0\0009\1\21\1=\1\25\0-\1\0\0009\1\26\1=\1\27\0-\1\0\0009\1\26\1=\1\28\0-\1\0\0009\1\26\1=\1\29\0-\1\0\0009\1\30\1=\1\31\0-\1\0\0009\1\30\1=\1 \0-\1\0\0009\1\30\1=\1!\0-\1\0\0009\1\30\1=\1\"\0-\1\0\0009\1\26\1=\1#\0006\1$\0009\1%\0019\1&\1B\1\1\0028\1\1\0L\1\2\0\5Ä\tmode\afn\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\vorange\aRx\aRv\aRc\6R\bred\aix\aic\6i\ngreen\6\19\6S\6s\6\22\6V\6v\fmagenta\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\6n\1\0\0\tbluex\0\1\a\0\4\0\0146\1\0\0006\3\1\0'\4\2\0\18\5\0\0&\4\5\4B\1\3\3\15\0\1\0X\3\1ÄL\2\2\0006\3\1\0'\5\3\0\18\6\0\0&\5\6\5D\3\2\0\25galaxyline.provider_\26galaxyline.providers.\frequire\npcall8\0\0\3\1\2\0\v'\0\0\0\21\1\0\0-\2\0\0\1\1\2\0X\1\5ÄU\1\4Ä\18\1\0\0'\2\1\0&\0\2\1X\1˜L\0\2\0\0¿\6 \5m\1\1\5\1\b\0\f5\1\6\0005\2\1\0003\3\0\0=\3\2\0025\3\3\0-\4\0\0009\4\4\4>\4\2\3=\3\5\2=\2\a\0012\0\0ÄL\1\2\0\5Ä\18FillerSection\1\0\0\14highlight\abg\1\2\0\0\tNONE\rprovider\1\0\0\0T\0\0\3\1\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2-\1\0\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\0¿\23nvim_win_get_width\bapi\bvim\20\1\1\2\0\1\0\0033\1\0\0002\0\0ÄL\1\2\0\0`\0\0\3\1\3\0\b6\0\0\0'\2\1\0B\0\2\2B\0\1\1-\0\0\0009\0\2\0B\0\1\1K\0\1\0\2¿\20load_galaxyline#nvim-config.plugins.galaxyline\frequire)\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\2¿\20load_galaxyline\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä ¥\3\0\0\6\1\a\0\0165\0\0\0006\1\1\0009\1\2\1'\3\3\0-\4\0\0B\4\1\2&\3\4\3B\1\2\0016\1\1\0009\1\4\0019\1\5\1B\1\1\0028\1\1\0'\2\6\0&\1\2\1L\1\2\0\b¿\6 \tmode\afn\27hi GalaxyViMode guifg=\bcmd\bvim\1\0\29\6\19\17SELECT BLOCK\6v\vVISUAL\6n\vNORMAL\6!\nSHELL\6R\fREPLACE\ace\14NORMAL EX\6c\fCOMMAND\6r\vPROMPT\6t\rTERMINAL\6i\vINSERT\aix\15COMPLETION\aic\15COMPLETION\6V\16VISUAL LINE\ar?\fCONFIRM\arm\vPROMPT\6\22\17VISUAL BLOCK\acv\aEX\aRx\fREPLACE\aRv\fREPLACE\aRc\fREPLACE\6s\vSELECT\6S\16SELECT LINE\bniV\vNORMAL\bniR\vNORMAL\bniI\vNORMAL\bno\22\vNORMAL\bnoV\vNORMAL\bnov\vNORMAL\ano\vNORMAL«\2\0\0\b\1\n\3=6\0\0\0006\2\1\0009\2\2\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\21\1\0\0\26\1\0\1\b\1\1\0X\1\nÄ-\1\0\0009\1\5\1\18\3\0\0\21\4\0\0\21\5\0\0\26\5\0\5\28\5\0\5 \4\5\4B\1\3\2\18\0\1\0006\1\0\0006\3\1\0009\3\2\0039\3\6\3'\5\4\0B\3\2\0A\1\0\2\21\2\1\0\26\2\0\2\b\2\1\0X\2\nÄ-\2\0\0009\2\a\2\18\4\1\0\21\5\1\0\21\6\1\0\26\6\0\6\28\6\0\6 \5\6\5B\2\3\2\18\1\2\0\18\2\0\0'\3\b\0\18\4\1\0&\2\4\2\21\3\2\0\26\3\2\3\b\3\1\0X\3\nÄ-\3\0\0009\3\t\3\18\5\2\0\21\6\2\0\21\a\2\0\26\a\2\a\28\a\2\a \6\a\6B\3\3\2\18\2\3\0L\2\2\0\0¿\19str_center_pad\6:\18str_right_pad\bcol\17str_left_pad\6.\tline\afn\bvim\rtostring\4\0\bx\0\0\a\0\t\1\0206\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\2\1'\3\4\0B\1\2\0026\2\5\0009\2\6\2#\4\1\0\24\4\0\4B\2\2\3'\4\a\0\18\5\2\0'\6\b\0&\4\6\4L\4\2\0\a% \6 \tmodf\tmath\6$\6.\tline\afn\bvim»\1;\0\0\4\0\5\0\b'\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0B\1\2\2&\0\1\0L\0\2\0\6$\tline\afn\bvim\n ÓÇ° x\0\0\5\0\6\0\0176\0\0\0009\0\1\0006\2\0\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\2\21\0\0\0)\1\0\0\1\1\0\0X\0\4Ä6\0\0\0009\0\4\0009\0\5\0L\0\2\0K\0\1\0\rfiletype\abo\20buf_get_clients\blsp\rtbl_keys\bvim…\1\0\0\6\0\t\0!5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2Ä+\1\1\0L\1\2\0006\1\1\0009\1\4\0019\1\5\1)\3\0\0B\1\2\2)\2x\0\1\2\1\0X\1\fÄ6\1\1\0009\1\6\0016\3\1\0009\3\a\0039\3\b\3)\5\0\0B\3\2\0A\1\0\2\21\1\1\0)\2\0\0\0\2\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\20buf_get_clients\blsp\rtbl_keys\rwinwidth\afn\rfiletype\abo\bvim\1\0\1\5\2Ö\1\0\0\2\0\a\0\0196\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\aÄ'\0\3\0006\1\0\0009\1\1\0019\1\4\1&\0\1\0L\0\2\0X\0\6Ä'\0\5\0006\1\0\0009\1\1\0019\1\6\1&\0\1\0L\0\2\0K\0\1\0\ftabstop\nTABS \15shiftwidth\fSPACES \14expandtab\abo\bvim·\1\0\0\5\0\f\0&6\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\1\6\1\4\0X\2\2Ä\f\2\1\0X\2\1Ä\18\2\0\0\18\4\2\0009\2\5\2B\2\2\2\18\1\2\0\a\0\6\0X\2\5Ä'\2\a\0\18\3\1\0&\2\3\2L\2\2\0X\2\rÄ\a\0\b\0X\2\5Ä'\2\t\0\18\3\1\0&\2\3\2L\2\2\0X\2\6Ä\a\0\n\0X\2\4Ä'\2\v\0\18\3\1\0&\2\3\2L\2\2\0\18\4\0\0009\2\5\0D\2\2\0\tÔÖπ \bmac\tÔÖ∫ \bdos\tÔÖº \tunix\nupper\5\17fileencoding\15fileformat\abo\bvim\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n Ôêò \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä ˝\29\1\0\19\0•\1\2°\0036\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\0016\2\4\0'\4\5\0B\2\2\0026\3\4\0'\5\6\0B\3\2\0029\4\a\0025\5\t\0=\5\b\2+\5\0\0009\6\n\0015\b\v\0B\6\2\0029\a\f\0015\t\r\0B\a\2\0029\b\14\1'\n\15\0'\v\16\0B\b\3\2\a\b\17\0X\b\3Ä\18\b\a\0\18\a\6\0\18\6\b\0009\b\18\1'\n\15\0005\v\19\0=\6\20\v=\a\21\vB\b\3\0019\b\18\1'\n\22\0005\v\23\0=\6\20\v=\a\21\vB\b\3\0019\b\24\1'\n\22\0B\b\2\0016\b\25\0009\b\26\b9\b\27\b\a\b\28\0X\b\5Ä5\b\29\0=\6\20\b=\a\21\b\18\5\b\0X\b\4Ä5\b\30\0=\6\20\b=\a\21\b\18\5\b\0003\b\31\0003\t \0003\n!\0003\v\"\0006\f#\0003\r%\0=\r$\f6\f#\0003\r'\0=\r&\f6\f\25\0009\f(\f9\f)\f'\14*\0+\15\1\0B\f\3\0014\f\0\0=\f+\0044\f\0\0=\f,\0044\f\0\0=\f-\0044\f\0\0=\f.\0044\f\0\0=\f/\0044\f\b\0005\r5\0005\0141\0003\0150\0=\0152\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\0146\r>\r\1\f5\r;\0005\0148\0003\0157\0=\0152\0145\15:\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14<\r>\r\2\f5\rB\0005\14=\0009\15>\3=\15?\0144\15\3\0\18\16\t\0'\18@\0B\16\2\0029\16A\16>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14C\r>\r\3\f5\rG\0005\14D\0009\15>\3=\15?\0145\15F\0009\16E\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14H\r>\r\4\f5\rL\0005\14I\0009\15J\3=\15?\0144\15\3\0009\16K\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14M\r>\r\5\f5\rO\0005\14N\0009\15J\3=\15?\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14P\r>\r\6\f5\rR\0005\14Q\0009\15J\3=\15?\0144\15\3\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14S\r>\r\a\f=\f+\0044\f\3\0\18\r\n\0)\15\1\0B\r\2\0?\r\0\0=\f,\0044\f\14\0005\rV\0005\14T\0005\15U\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14W\r>\r\1\f5\r[\0005\14X\0005\15Z\0009\16Y\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14\\\r>\r\2\f5\r`\0005\14]\0005\15_\0009\16^\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14a\r>\r\3\f5\rd\0005\14b\0005\15c\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14e\r>\r\4\f5\rj\0005\14g\0003\15f\0=\0152\0145\15h\0009\16\21\5>\16\2\15=\15i\0144\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14k\r>\r\5\f5\rp\0005\14m\0003\15l\0=\0152\0145\15n\0009\16\21\5>\16\2\15=\15i\0145\15o\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14q\r>\r\6\f5\ru\0005\14s\0003\15r\0=\0152\0145\15t\0009\16\21\5>\16\2\15=\15i\0144\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14v\r>\r\a\f5\r|\0005\14x\0003\15w\0=\0152\0143\15y\0=\15?\0145\15z\0009\16\21\5>\16\2\15=\15i\0145\15{\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14}\r>\r\b\f5\rÇ\0005\14\0003\15~\0=\0152\14\18\15\v\0)\17d\0B\15\2\2=\15?\0145\15Ä\0009\16\21\5>\16\2\15=\15i\0145\15Å\0009\16^\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14É\r>\r\t\f5\rà\0005\14Ö\0003\15Ñ\0=\0152\14\18\15\v\0)\17P\0B\15\2\2=\15?\0145\15Ü\0009\16\21\5>\16\2\15=\15i\0145\15á\0009\16K\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14â\r>\r\n\f5\rê\0005\14ã\0003\15ä\0=\0152\0149\15å\3=\15?\0145\15ç\0009\16\21\5>\16\2\15=\15i\0145\15è\0009\16é\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ë\r>\r\v\f5\rî\0005\14í\0009\15å\3=\15?\0145\15ì\0009\16é\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ï\r>\r\f\f\18\r\n\0)\15\3\0B\r\2\0?\r\1\0=\f-\0044\f\4\0005\rò\0005\14ó\0003\15ñ\0=\0152\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\0146\r>\r\1\f5\rú\0005\14ô\0005\15ö\0009\16\21\5>\16\2\15=\15i\0145\15õ\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ù\r>\r\2\f5\r†\0005\14û\0009\15>\3=\15?\0145\15ü\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14°\r>\r\3\f=\f.\0044\f\3\0005\r£\0005\14¢\0004\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14§\r>\r\1\f=\f/\0042\0\0ÄK\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\14SFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14SFileName\15BufferType\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\rprovider\17FileTypeName\14separator\6 \1\0\0\1\0\0\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\1\4\0\0\0\0\tbold\vviolet\1\2\0\0\tNONE\24check_git_workspace\1\0\1\14separator\6 \0\15FileFormat\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\1\14separator\a  \0\15IndentInfo\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\ticon\tÔÄº \14separator\a  \0\14LspClient\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\0\1\0\2\ticon\tÔÇÖ \14separator\a  \0\rNumLines\1\0\0\1\2\0\0\tNONE\1\0\0\0\fPercent\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\1\14separator\6 \0\rLineInfo\1\0\0\24separator_highlight\1\2\0\0\tNONE\1\0\1\14separator\6 \0\19DiagnosticInfo\1\0\0\1\4\0\0\0\0\tbold\1\0\2\ticon\n ÔÅö \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\1\4\0\0\0\0\tbold\tcyan\1\0\2\ticon\n ÔÅ™ \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\4\0\0\0\0\tbold\vyellow\1\0\2\ticon\n ÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\4\0\0\0\0\tbold\1\0\2\ticon\n ÔÅó \rprovider\20DiagnosticError\15DiffRemove\1\0\0\1\0\3\ticon\tÔëò \14separator\5\rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\3\ticon\tÔëô \14separator\5\rprovider\17DiffModified\fDiffAdd\1\0\0\ngreen\18hide_in_width\1\0\3\ticon\tÔëó \14separator\5\rprovider\fDiffAdd\rFileName\1\0\0\1\4\0\0\0\0\tbold\fmagenta\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color\rfileinfo\14condition\21buffer_not_empty\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\15RainbowRed\1\0\0\14highlight\tblue\rprovider\1\0\0\0\21short_line_right\20short_line_left\nright\bmid\tleftm    augroup galaxyline_config\n      au!\n      au ColorScheme * lua UpdateGalaxyline()\n    augroup END\n  \14nvim_exec\bapi\0\21ReloadGalaxyline\0\21UpdateGalaxyline\a_G\0\0\0\0\1\0\t\tcyan\f#008080\ngreen\f#98be65\vyellow\f#ECBE7B\rdarkblue\f#081633\tblue\f#51afef\bred\f#ec5f67\fmagenta\f#c678dd\vviolet\f#a9a1e1\vorange\f#FF8800\1\0\t\tcyan\f#008080\ngreen\f#7f9f54\vyellow\f#ECBE7B\rdarkblue\f#081633\tblue\f#4596cd\bred\f#ec5f67\fmagenta\f#c678dd\vviolet\f#958ec7\vorange\f#FF8800\nlight\15background\6o\bvim\fhi_link\1\0\1\bgui\tNONE\17StatusLineNC\abg\afg\1\0\1\bgui\tNONE\ahi\0061\freverse\15StatusLine\16get_hl_attr\1\3\0\0\15StatusLine\vNormal\vget_bg\1\3\0\0\15StatusLine\vNormal\vget_fg\1\r\0\0\rNvimTree\nvista\tdbui\vpacker\18fugitiveblame\15LspTrouble\18DiffviewFiles\29DiffviewFileHistoryPanel\26DiffviewFHOptionPanel\fOutline\14dashboard\17NeogitStatus\20short_line_list\fsection\25galaxyline.condition\15galaxyline\frequire\ahl\nutils\vcommon\vConfig\3ÄÄ¿ô\4\27ÄÄ¿ô\4\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n¢\r\0\0\5\0\30\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\0016\0\26\0009\0\27\0009\0\28\0'\2\29\0+\3\1\0B\0\3\1K\0\1\0É\1    hi def link GitSignsAdd diffAdded\n    hi def link GitSignsChange diffChanged\n    hi def link GitSignsDelete diffRemoved\n  \14nvim_exec\bapi\bvim\14diff_opts\1\0\3\rinternal\2\14algorithm\14histogram\21indent_heuristic\2\16watch_index\1\0\1\rinterval\3Ë\a\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\f\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\16n <leader>d2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>hb0<cmd>lua require\"gitsigns\".blame_line()<CR>\to ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\tx ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\fnoremap\2\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\vbuffer\2\nsigns\1\0\4\20update_debounce\3d\18sign_priority\3\6\nnumhl\1\vlinehl\1\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\ttext\b‚ñç\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\b‚ñç\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\nnumhl\21GitSignsChangeNr\ttext\b‚ñç\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\ttext\b‚ñç\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nﬂ\3\0\1\a\0\22\00066\1\0\0009\1\1\0019\1\2\1\a\1\3\0X\0010Ä6\1\4\0'\3\5\0B\1\2\0029\2\6\0009\3\6\0019\3\a\3\5\2\3\0X\2\2Ä'\2\b\0X\3\1Ä'\2\t\0+\3\0\0009\4\6\0009\5\6\0019\5\n\5\5\4\5\0X\4\aÄ6\4\4\0'\6\v\0B\4\2\0029\4\f\4B\4\1\2\18\3\4\0X\4\16Ä9\4\r\0009\5\r\0019\5\14\5\4\4\5\0X\4\5Ä9\4\r\0009\5\r\0019\5\15\5\5\4\5\0X\4\6Ä6\4\4\0'\6\v\0B\4\2\0029\4\16\4B\4\1\2\18\3\4\0006\4\4\0'\6\17\0B\4\2\0029\4\18\0045\6\19\0=\2\20\6=\3\21\6D\4\2\0K\0\1\0\rlocation\bkey\1\0\0\28calculate_commentstring&ts_context_commentstring.internal\30get_visual_start_location\6V\6v\fcmotion\24get_cursor_location#ts_context_commentstring.utils\nblock\16__multiline\14__default\tline\nctype\18Comment.utils\frequire\20typescriptreact\rfiletype\abo\bvimN\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\rpre_hook\1\0\0\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\nü\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\4\15max_height\3\f\14max_width\3P\16hint_prefix\t‚óè \16hint_enable\1\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nâ\1\0\1\r\1\6\0\0166\1\0\0-\3\0\0B\1\2\4H\4\tÄ6\6\1\0009\6\2\0069\6\3\6\18\b\0\0'\t\4\0\18\n\4\0\18\v\5\0005\f\5\0B\6\6\1F\4\3\3R\4ıK\0\1\0\3¿\1\0\3\vsilent\2\fnoremap\2\vnowait\2\6n\24nvim_buf_set_keymap\bapi\bvim\npairs\0\0\4\1\5\1\0176\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\1ÄK\0\1\0006\0\0\0009\0\1\0)\1\1\0=\1\2\0-\0\0\0006\2\0\0009\2\3\0029\2\4\2B\2\1\0A\0\0\1K\0\1\0\4¿\25nvim_get_current_buf\bapi\22custom_setup_done\6b\bvim\2Ä\1\0\0\4\0\6\0\0166\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0B\2\1\2\15\0\2\0X\3\3Ä9\2\4\0B\2\1\1X\2\2Ä9\2\5\1B\2\1\1K\0\1\0\topen\nfocus\rwin_open\18nvim-tree.lib\19nvim-tree.view\frequire÷\1\0\0\6\0\n\0\0256\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2B\2\1\0029\3\6\1B\3\1\2\15\0\3\0X\4\3Ä9\3\a\1B\3\1\1X\3\aÄ9\3\b\0B\3\1\0016\3\3\0009\3\4\0039\3\t\3\18\5\2\0B\3\2\1K\0\1\0\25nvim_set_current_win\topen\nclose\rwin_open\25nvim_get_current_win\bapi\bvim\19nvim-tree.view\18nvim-tree.lib\frequire¨\1\0\0\a\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\2\15\0\1\0X\2\tÄ6\2\3\0009\2\4\0029\2\5\2'\4\6\0009\5\a\1'\6\b\0&\4\6\0045\5\t\0B\2\3\1K\0\1\0\1\0\1\vdetach\2\b' &\18absolute_path\15xdg-open '\rjobstart\afn\bvim\23get_node_at_cursor\18nvim-tree.lib\frequireñ\2\0\1\n\6\b\0001+\1\2\0006\2\0\0009\4\1\0B\2\2\4X\5\19Ä9\a\2\6\15\0\a\0X\b\tÄ9\a\1\6\21\a\a\0)\b\0\0\1\b\a\0X\a\4Ä-\a\0\0009\a\3\a\18\t\6\0B\a\2\1-\a\1\0009\b\4\0068\a\b\a\15\0\a\0X\b\2Ä+\1\1\0X\2\2ÄE\5\3\3R\5Î\15\0\1\0X\2\19Ä-\2\2\0009\2\5\2\4\0\2\0X\2\15Ä-\2\3\0\15\0\2\0X\2\5Ä-\2\4\0009\3\6\0008\2\3\2\15\0\2\0X\3\5Ä-\2\2\0009\2\a\2\18\4\0\0B\2\2\0011\5\2\0+\2\2\0L\2\2\0+\2\1\0L\2\2\0\6¿\3¿\1¿\0\0\4¿\5Ä\15close_node\tname\tTree\18absolute_path\frecurse\topen\fentries\vipairsº\3\1\0\14\2\16\0B6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2B\2\1\0024\3\0\0004\4\0\0006\5\6\0\18\a\2\0B\5\2\4X\b\22Ä6\n\3\0009\n\4\n9\n\a\n\18\f\t\0B\n\2\2\15\0\n\0X\v\15Ä6\n\3\0009\n\4\n9\n\b\n\18\f\t\0'\r\t\0B\n\3\2\15\0\n\0X\v\aÄ6\n\3\0009\n\4\n9\n\n\n\18\f\t\0B\n\2\2+\v\2\0<\v\n\3E\b\3\3R\bË-\5\0\0\15\0\5\0X\6\tÄ6\5\6\0-\a\1\0009\a\v\aB\5\2\4X\b\2Ä+\n\2\0<\n\t\4E\b\3\3R\b¸+\5\1\0004\6\0\0003\a\r\0=\a\f\0069\a\f\0069\t\14\1B\a\2\1\15\0\5\0X\a\3Ä9\a\15\0+\t\1\0B\a\2\0012\0\0ÄK\0\1\0\0¿\0\0\14find_file\tTree\0\frecurse\20cfwob_whitelist\22nvim_buf_get_name\14buflisted\24nvim_buf_get_option\23nvim_buf_is_loaded\vipairs\19nvim_list_bufs\bapi\bvim\18nvim-tree.lib\14nvim-tree\frequire^\1\1\4\1\5\1\r6\1\0\0009\1\1\0019\1\2\1\b\1\0\0X\1\1Ä2\0\6Ä6\1\0\0009\1\3\0013\3\4\0B\1\2\0012\0\0ÄK\0\1\0K\0\1\0\1¿\0\rschedule\20nvim_tree_ready\6g\bvim\2Ç\1\0\0\3\1\6\0\16-\0\0\0009\0\0\0\15\0\0\0X\1\aÄ6\0\1\0009\0\2\0'\2\3\0B\0\2\1-\0\0\0+\1\1\0=\1\0\0006\0\1\0009\0\4\0)\1\1\0=\1\5\0K\0\1\0\1¿\20nvim_tree_ready\6g\20NvimTreeRefresh\bcmd\bvim\19refresh_needed‹\25\1\0\n\0~\2î\0026\0\0\0'\2\1\0B\0\2\0024\1\0\0005\2\3\0=\2\2\0016\2\4\0009\2\5\2)\3\0\0=\3\6\0026\2\4\0009\2\5\2)\3\1\0=\3\a\0026\2\4\0009\2\5\2)\3\0\0=\3\b\0026\2\4\0009\2\5\2)\3\30\0=\3\t\0026\2\4\0009\2\5\2)\3\1\0=\3\n\0026\2\4\0009\2\5\2)\3\1\0=\3\v\0026\2\4\0009\2\5\2)\3\0\0=\3\f\0026\2\4\0009\2\5\2)\3\0\0=\3\r\0026\2\4\0009\2\5\2)\3\0\0=\3\14\0026\2\4\0009\2\5\2)\3\1\0=\3\15\0026\2\4\0009\2\5\2)\3\0\0=\3\16\0026\2\4\0009\2\5\2)\3\1\0=\3\17\0026\2\4\0009\2\5\2)\3\1\0=\3\18\0026\2\4\0009\2\5\0024\3\0\0=\3\19\0026\2\4\0009\2\5\2)\3\1\0=\3\20\0026\2\4\0009\2\5\2'\3\22\0=\3\21\0026\2\4\0009\2\5\2)\3\0\0=\3\23\0026\2\4\0009\2\5\2)\3\0\0=\3\24\0026\2\4\0009\2\5\2)\3\1\0=\3\25\0026\2\4\0009\2\5\0026\3\27\0009\3\28\3'\5\29\0'\6\30\0'\a\31\0'\b \0'\t!\0&\5\t\0056\6\4\0009\6\5\0069\6\t\6\23\6\0\0066\a\4\0009\a\5\a9\a\t\a\23\a\1\aB\3\4\2=\3\26\0026\2\4\0009\2\5\0025\3$\0005\4#\0=\4%\0035\4&\0=\4'\3=\3\"\0026\2\4\0009\2\5\0025\3)\0=\3(\0026\2\4\0009\2\5\0025\3+\0005\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\3=\3*\0026\2\0\0'\0042\0B\2\2\0029\0023\0025\0035\0\18\4\2\0'\0064\0B\4\2\2=\0046\3\18\4\2\0'\0064\0B\4\2\2=\0047\3\18\4\2\0'\0068\0B\4\2\2=\0049\3\18\4\2\0'\0068\0B\4\2\2=\4:\3\18\4\2\0'\6;\0B\4\2\2=\4<\3\18\4\2\0'\6=\0B\4\2\2=\4>\3\18\4\2\0'\6?\0B\4\2\2=\4@\3\18\4\2\0'\6A\0B\4\2\2=\4B\3\18\4\2\0'\6A\0B\4\2\2=\4C\3\18\4\2\0'\6D\0B\4\2\2=\4E\3\18\4\2\0'\6A\0B\4\2\2=\4F\3\18\4\2\0'\0064\0B\4\2\2=\4G\3\18\4\2\0'\6H\0B\4\2\2=\4I\3\18\4\2\0'\6J\0B\4\2\2=\4K\3\18\4\2\0'\6L\0B\4\2\2=\4M\3\18\4\2\0'\6N\0B\4\2\2=\4O\3\18\4\2\0'\6P\0B\4\2\2=\4Q\3\18\4\2\0'\6R\0B\4\2\2=\4S\3\18\4\2\0'\6T\0B\4\2\2=\4U\3\18\4\2\0'\6V\0B\4\2\2=\4W\3\18\4\2\0'\6X\0B\4\2\2=\4Y\3\18\4\2\0'\6Z\0B\4\2\2=\4[\3\18\4\2\0'\6\\\0B\4\2\2=\4]\3\18\4\2\0'\6^\0B\4\2\2=\4_\3\18\4\2\0'\6`\0B\4\2\2=\4a\3\18\4\2\0'\6b\0B\4\2\2=\4c\3\18\4\2\0'\6d\0B\4\2\2=\4e\3\18\4\2\0'\6f\0B\4\2\2=\4g\3\18\4\2\0'\6h\0B\4\2\2=\4i\0033\4j\0003\5l\0=\5k\0013\5n\0=\5m\0013\5p\0=\5o\0013\5r\0=\5q\0013\5t\0=\5s\0019\5u\0003\av\0B\5\2\0016\5\4\0009\5w\0059\5x\5'\ay\0+\b\1\0B\5\3\0016\5\4\0009\5w\0059\5x\5'\az\0+\b\1\0B\5\3\0016\5{\0009\5|\5=\1}\0052\0\0ÄK\0\1\0\14nvim_tree\vConfig\a_G’\2    augroup Config.nvim_tree\n      au!\n      au FileType NvimTree lua Config.nvim_tree.custom_setup()\n      \" au BufEnter * lua Config.nvim_tree.global_bufenter()\n      au BufDelete * lua Config.nvim_tree.close_folders_without_open_buffers(true)\n      au BufWritePost * lua require'nvim-tree.lib'.refresh_tree(true)\n    augroup END\n    ‚\1    hi! link NvimTreeGitNew diffAdded\n    hi! link NvimTreeGitDeleted diffRemoved\n    \" hi! link NvimTreeGitDirty GitDirty\n    hi! link NvimTreeGitStaged diffAdded\n    \" hi! link NvimTreeFolderIcon NvimTreeFolderName\n    \14nvim_exec\bapi\0\23on_nvim_tree_ready\0'close_folders_without_open_buffers\0\rxdg_open\0\20toggle_no_focus\0\nfocus\0\17custom_setup\0\6q\nclose\6-\vdir_up\a]c\18next_git_item\a[c\18prev_git_item\6p\npaste\6y\tcopy\6x\bcut\n<C-r>\16full_rename\6r\vrename\6d\vremove\6a\vcreate\6R\frefresh\6H\20toggle_dotfiles\6I\19toggle_ignored\n<Tab>\fpreview\6J\17last_sibling\6K\18first_sibling\6l\6h\6P\16parent_node\v<S-CR>\t<BS>\15close_node\6s\nsplit\6v\vvsplit\n<C-t>\vtabnew\n<C-]>\19<2-RightMouse>\acd\18<2-LeftMouse>\t<CR>\1\0\1\6o):lua Config.nvim_tree.xdg_open()<CR>\tedit\23nvim_tree_callback\21nvim-tree.config\blsp\1\0\4\thint\bÔÅ™\fwarning\bÔÅ±\tinfo\bÔÅö\nerror\bÔÅó\vfolder\1\0\b\topen\bÔêì\15arrow_open\bÔëº\fsymlink\bÔíÇ\nempty\bÔùï\15empty_open\bÔùï\fdefault\bÔêì\17symlink_open\bÔíÇ\17arrow_closed\bÔë†\bgit\1\0\a\runstaged\bÔëô\14untracked\bÔëó\frenamed\bÔëö\fdeleted\bÔëò\runmerged\bÔêá\fignored\b‚óå\vstaged\bÔò¥\1\0\2\fsymlink\bÔíÅ\fdefault\bÔÉ∂\20nvim_tree_icons\1\0\4\18folder_arrows\3\1\bgit\3\1\ffolders\3\1\nfiles\3\1\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vpacker\aqf\fOutline$nvim_tree_window_picker_exclude\22:s?\\v(.*)?ÔêÅ \\1?\31:s?\\v^¬ß¬ß.*\\/(.*$)?‚Ä¶\\1?&:s?\\v^¬ß¬ß.{-}(\\/.{1,%d}$)?‚Ä¶\\1?\25:s?\\v(.{%d})?¬ß¬ß\\1?\a:~\vformat\vstring#nvim_tree_root_folder_modifier\25nvim_tree_update_cwd\28nvim_tree_hijack_cursor\23nvim_tree_tab_open\tleft\19nvim_tree_side\"nvim_tree_disable_keybindings\28nvim_tree_special_files\21nvim_tree_follow\30nvim_tree_folder_devicons\28nvim_tree_disable_netrw\27nvim_tree_hijack_netrw\27nvim_tree_quit_on_open\25nvim_tree_auto_close\24nvim_tree_auto_open\30nvim_tree_lsp_diagnostics\26nvim_tree_group_empty\20nvim_tree_width\24nvim_tree_gitignore\21nvim_tree_git_hl\29nvim_tree_indent_markers\6g\bvim\1\2\0\0\t.git\20cfwob_whitelist\21nvim-tree.events\frequire\14\18\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n£\5\0\0\6\0\29\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\16\0005\4\14\0005\5\15\0=\5\f\4=\4\17\0035\4\18\0005\5\19\0=\5\20\0045\5\21\0=\5\22\4=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\28\2B\0\2\1K\0\1\0\16textobjects\26context_commentstring\1\0\1\venable\2\fautotag\1\0\1\venable\2\tswap\18swap_previous\1\0\1\14<leader>A\21@parameter.inner\14swap_next\1\0\1\14<leader>a\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\1\0\4\aia\21@parameter.inner\aif\20@function.inner\aaa\21@parameter.outer\aaf\20@function.outer\1\0\2\14lookahead\2\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_decremental\f<S-TAB>\21node_incremental\n<TAB>\22scope_incremental\t<CR>\19init_selection\t<CR>\1\0\1\venable\2\14highlight\fdisable\1\2\0\0\bvim\1\0\1\venable\2\vindent\1\0\1\venable\1\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\n•\6\0\0\14\3\26\3Å\1-\0\0\0009\0\0\0'\2\1\0B\0\2\2-\1\0\0009\1\2\1'\3\1\0B\1\2\2-\2\1\0009\2\3\2\18\4\1\0B\2\2\0029\3\4\2*\4\0\0\3\4\3\0X\3\2Ä)\3ˇˇX\4\1Ä)\3\1\0\18\6\2\0009\4\5\2\29\a\1\3B\4\3\2\18\a\2\0009\5\5\2\29\b\2\3B\5\3\2-\6\2\0009\6\6\6'\b\a\0005\t\t\0\18\f\5\0009\n\b\5B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\v\0005\t\f\0\18\f\4\0009\n\b\4B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\r\0005\t\14\0\18\f\5\0009\n\b\5B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\15\0005\t\17\0-\n\0\0009\n\2\n'\f\16\0+\r\1\0B\n\3\2\14\0\n\0X\v\3Ä\18\f\5\0009\n\b\5B\n\2\2=\n\n\t-\n\0\0009\n\0\n'\f\16\0+\r\1\0B\n\3\2\14\0\n\0X\v\aÄ-\n\0\0009\n\0\n'\f\18\0B\n\2\2\14\0\n\0X\v\1Ä\18\n\0\0=\n\19\t-\n\0\0009\n\20\n'\f\16\0+\r\1\0B\n\3\2=\n\21\tB\6\3\1-\6\2\0009\6\6\6'\b\22\0005\t\24\0-\n\0\0009\n\2\n'\f\23\0+\r\1\0B\n\3\2\14\0\n\0X\v\3Ä\18\f\5\0009\n\b\5B\n\2\2=\n\n\t-\n\0\0009\n\0\n'\f\23\0+\r\1\0B\n\3\2\14\0\n\0X\v\aÄ-\n\0\0009\n\0\n'\f\25\0B\n\2\2\14\0\n\0X\v\1Ä\18\n\0\0=\n\19\t-\n\0\0009\n\20\n'\f\23\0+\r\1\0B\n\3\2=\n\21\tB\6\3\1K\0\1\0\1¿\0¿\2¿\16diffRemoved\1\0\0\15DiffDelete\30NeogitDiffDeleteHighlight\bgui\fget_gui\afg\14diffAdded\1\0\0\fDiffAdd\27NeogitDiffAddHighlight\1\0\0\31NeogitDiffContextHighlight\1\0\0\30NeogitHunkHeaderHighlight\abg\1\0\0\vto_css\21NeogitHunkHeader\ahi\nshade\14lightness\rfrom_hex\vget_bg\vNormal\vget_fg\1ÄÄÄˇ\3ÁÃô≥\6≥Êå˛\3ÁÃô≥\6≥ÊÃ˝\3”\6\1\0\t\0\31\0-6\0\0\0009\0\1\0009\0\2\0009\0\3\0006\1\0\0009\1\1\0019\1\4\0016\2\0\0009\2\1\0029\2\5\0024\3\0\0006\4\6\0'\6\a\0B\4\2\0029\4\b\0045\6\t\0005\a\n\0=\a\v\0065\a\r\0005\b\f\0=\b\14\a5\b\15\0=\b\16\a5\b\17\0=\b\18\a=\a\19\0065\a\20\0=\a\21\0065\a\23\0005\b\22\0=\b\v\a=\a\24\6B\4\2\0013\4\26\0=\4\25\0036\4\27\0009\4\28\0049\4\29\4'\6\30\0+\a\1\0B\4\3\0016\4\0\0=\3\a\0042\0\0ÄK\0\1\0˚\2    augroup neogit_config\n      au!\n      au FileType NeogitStatus setl nobl\n      au FileType Neogit* setl nolist\n      \" au ColorScheme * call v:lua.Config.neogit.fix_hl()\n      au FileType NeogitCommitView setl nobl\n      au BufEnter,FileType NeogitCommitView set eventignore+=CursorMoved\n      au BufLeave NeogitCommitView set eventignore-=CursorMoved\n    augroup END\n  \14nvim_exec\bapi\bvim\0\vfix_hl\rmappings\1\0\0\1\0\1\6B\16BranchPopup\17integrations\1\0\1\rdiffview\2\nsigns\thunk\1\3\0\0\5\5\titem\1\3\0\0\bÔë†\bÔëº\fsection\1\0\0\1\3\0\0\bÔë†\bÔëº\vstatus\1\0\1\24recent_commit_count\3\n\1\0\3!disable_context_highlighting\1\17disable_hint\2\18disable_signs\1\nsetup\vneogit\frequire\nutils\ahl\nColor\ncolor\vcommon\vConfig\0", "config", "neogit")
time([[Config for neogit]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-cmp ]]

-- Config for: nvim-cmp
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimì\1\0\0\t\0\6\0\0214\0\0\0006\1\0\0006\3\1\0009\3\2\0039\3\3\3B\3\1\0A\1\0\4X\4\aÄ6\6\1\0009\6\2\0069\6\4\6\18\b\5\0B\6\2\2+\a\2\0<\a\6\0E\4\3\3R\4˜6\1\1\0009\1\5\1\18\3\0\0D\1\2\0\rtbl_keys\21nvim_win_get_buf\19nvim_list_wins\bapi\bvim\vipairsÀ\b\1\0\f\0.\0N6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0025\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0009\b\f\b)\n¸ˇB\b\2\2=\b\14\a9\b\v\0009\b\f\b)\n\4\0B\b\2\2=\b\15\a9\b\v\0009\b\16\bB\b\1\2=\b\17\a9\b\v\0009\b\18\bB\b\1\2=\b\19\a9\b\v\0009\b\20\b5\n\21\0009\v\22\0009\v\23\v=\v\24\nB\b\2\2=\b\25\a=\a\v\0065\a\29\0006\b\0\0'\n\26\0B\b\2\0029\b\27\b5\n\28\0B\b\2\2=\b\30\a=\a\31\0065\a \0=\a!\0064\a\6\0005\b\"\0>\b\1\a5\b#\0>\b\2\a5\b$\0>\b\3\a5\b%\0>\b\4\a5\b&\0003\t'\0=\t(\b>\b\5\a=\a)\6B\4\2\0019\4*\0\18\6\4\0009\4+\4'\a,\0009\b-\1B\b\1\0A\4\2\1K\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\fsources\15get_bufnrs\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nspell\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\18documentation\1\0\1\vborder\vsingle\15formatting\vformat\1\0\0\1\0\2\14with_text\2\rmaxwidth\3¨\2\15cmp_format\flspkind\t<CR>\rbehavior\fReplace\20ConfirmBehavior\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\vMethod\n Óûõ \tUnit\n Ô•¨ \18TypeParameter\n<ÔûÉ>\tText\n Ôî´ \vFolder\n Ô±Æ \16Constructor\n Óàè \tFile\n ÔÖõ \nValue\n Ô¢ü \fKeyword\n Ôùß \14Reference\n ÔíÅ \tEnum\n Ô©ó \rProperty\n ÔÇ≠ \vModule\n Ôô® \rOperator\n Ôöî \nEvent\n ÔÉß \vStruct\n ÔÜ≥ \15EnumMember\n ÔÖù \14Interface\t Ô®†\nColor\n Óà´ \nClass\n Ô†ñ \nField\n Óúñ \rConstant\n Ôõº \rVariable\n[Óúñ]\rFunction\n Óûõ \fSnippet\n Ôóè \15cmp_buffer\"nvim-autopairs.completion.cmp\bcmp\frequire\0", "config", "nvim-cmp")

vim.cmd [[ packadd cmp-vsnip ]]
vim.cmd [[ packadd friendly-snippets ]]
vim.cmd [[ packadd nvim-bufferline.lua ]]

-- Config for: nvim-bufferline.lua
try_loadstring("\27LJ\2\nk\0\3\15\1\5\0\17'\3\0\0006\4\1\0\18\6\2\0B\4\2\4H\a\tÄ6\t\2\0009\t\3\t'\v\4\0\18\f\3\0-\r\0\0008\r\a\r\18\14\b\0B\t\5\2\18\3\t\0F\a\3\3R\aıL\3\2\0\0¿\r%s %s %d\vformat\vstring\npairs\5ç\6\1\0\a\0\18\0\0275\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\f\0005\4\4\0003\5\5\0=\5\6\0045\5\a\0=\5\b\0044\5\3\0005\6\t\0>\6\1\0055\6\n\0>\6\2\5=\5\v\4=\4\r\3B\1\2\0016\1\14\0009\1\15\0019\1\16\1'\3\17\0+\4\1\0B\1\3\0012\0\0ÄK\0\1\0\\    hi! BufferLineDiagnostic gui=bold\n    hi! BufferLineDiagnosticVisible gui=bold\n    \14nvim_exec\bapi\bvim\foptions\1\0\0\foffsets\1\0\3\15text_align\vcenter\ttext\19Source Control\rfiletype\18DiffviewFiles\1\0\3\15text_align\vcenter\ttext\nFiles\rfiletype\rNvimTree\20separator_style\1\3\0\0\b‚ñè\b‚ñï\26diagnostics_indicator\0\1\0\16\20max_name_length\3\18\23right_trunc_marker\bÔÇ©\22left_trunc_marker\bÔÇ®\15close_icon\bÔÄç\18modified_icon\b‚óè\22buffer_close_icon\bÔôï\fnumbers\tnone\27always_show_bufferline\2\25enforce_regular_tabs\1\tview\fdefault\24persist_buffer_sort\2\20show_close_icon\1\28show_buffer_close_icons\2\16diagnostics\rnvim_lsp\rtab_size\3\18\22max_prefix_length\3\15\nsetup\15bufferline\frequire\1\0\4\tinfo\bÔÅö\fwarning\bÔÅ±\nerror\bÔÅó\thint\bÔÅ™\0", "config", "nvim-bufferline.lua")

vim.cmd [[ packadd lsp-trouble.nvim ]]

-- Config for: lsp-trouble.nvim
try_loadstring("\27LJ\2\nC\0\0\4\1\3\0\5-\0\0\0009\0\0\0'\2\1\0'\3\2\0D\0\3\0\1¿\fTrouble\rfiletype\25find_buf_with_option2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\19LspTroubleOpen\bcmd\bvim>\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\31wincmd p | LspTroubleClose\bcmd\bvim€\5\1\0\b\0\22\0\0316\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0016\2\0\0'\4\5\0B\2\2\0029\2\6\0025\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\4B\2\2\0019\2\f\0003\4\r\0003\5\14\0003\6\15\0005\a\16\0B\2\5\0027\2\17\0006\2\18\0009\2\19\0029\2\20\2'\4\21\0+\5\1\0B\2\3\0012\0\0ÄK\0\1\0g    augroup LspTroubleConfig\n      au!\n      au FileType Trouble setlocal cc=\n    augroup END\n    \14nvim_exec\bapi\bvim\27LspTroubleCustomToggle\1\0\2\20remember_height\2\nfocus\2\0\0\0\23create_buf_toggler\nsigns\1\0\4\thint\bÔ†µ\fwarning\bÔî©\nerror\bÔôô\16information\bÔëâ\16action_keys\1\0\v\19toggle_preview\6P\16toggle_mode\6m\vcancel\n<esc>\tjump\t<cr>\frefresh\6R\15open_folds\azR\tnext\6j\nclose\6q\rprevious\6k\fpreview\6p\16close_folds\azM\1\0\n\tmode\26workspace_diagnostics\nicons\2\vheight\3\n\16fold_closed\bÔë†\14fold_open\bÔëº\17auto_preview\1\15auto_close\1\14auto_open\1\17indent_lines\2\29use_lsp_diagnostic_signs\1\nsetup\ftrouble\nutils\vcommon\vConfig\20nvim-config.lib\frequire\0", "config", "lsp-trouble.nvim")

vim.cmd [[ packadd telescope.nvim ]]

-- Config for: telescope.nvim
try_loadstring("\27LJ\2\nn\0\2\a\4\2\1\16\14\0\1\0X\2\1ÄK\0\1\0009\2\0\1*\3\0\0\1\3\2\0X\2\2ÄK\0\1\0X\2\6Ä-\2\0\0009\2\1\2-\4\1\0-\5\2\0-\6\3\0B\2\4\1K\0\1\0\0\0\0Ä\1¿\2Ä\27buffer_previewer_maker\tsize¿ö\fi\1\3\a\1\6\0\17\14\0\2\0X\3\1Ä4\2\0\0006\3\0\0009\3\1\0039\3\2\3\18\5\0\0B\3\2\2\18\0\3\0006\3\0\0009\3\3\0039\3\4\3\18\5\0\0003\6\5\0B\3\3\0012\0\0ÄK\0\1\0\2¿\0\ffs_stat\tloop\vexpand\afn\bvimN\0\0\6\1\4\0\t6\0\0\0009\0\1\0'\2\2\0\18\4\2\0009\2\3\2-\5\0\0B\2\3\0A\0\0\1K\0\1\0\1¿\vformat\22DiffviewOpen %s^!\bcmd\bvim¢\1\1\0\6\1\t\0\20-\0\0\0009\0\0\0B\0\1\0029\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0+\5\2\0B\2\3\0016\2\2\0009\2\5\2'\4\6\0B\2\2\0016\2\2\0009\2\a\0023\4\b\0B\2\2\0012\0\0ÄK\0\1\0\1¿\0\rschedule\15stopinsert\bcmd\19nvim_win_close\bapi\bvim\nvalue\23get_selected_entryÙ\f\1\0\f\0D\0o6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0023\3\4\0006\4\0\0'\6\5\0B\4\2\0029\4\6\0045\6-\0005\a\b\0005\b\a\0=\b\t\a5\b\n\0005\t\v\0=\t\f\b5\t\r\0=\t\14\b=\b\15\a5\b\16\0=\b\17\a6\b\0\0'\n\18\0B\b\2\0029\b\19\b=\b\20\a4\b\0\0=\b\21\a6\b\0\0'\n\18\0B\b\2\0029\b\22\b=\b\23\a4\b\0\0=\b\24\a5\b\25\0=\b\26\a5\b\27\0=\b\28\a6\b\0\0'\n\3\0B\b\2\0029\b\29\b9\b\30\b=\b\31\a6\b\0\0'\n\3\0B\b\2\0029\b \b9\b\30\b=\b!\a6\b\0\0'\n\3\0B\b\2\0029\b\"\b9\b\30\b=\b#\a=\3$\a5\b)\0005\t'\0009\n%\0009\v&\0 \n\v\n=\n(\t=\t*\b4\t\0\0=\t+\b=\b,\a=\a.\0065\a0\0005\b/\0=\b1\a5\b2\0=\b3\a5\b8\0005\t7\0005\n5\0003\v4\0=\v6\n=\n*\t=\t,\b=\b9\a=\a:\0065\a<\0005\b;\0=\b=\a5\b?\0005\t>\0=\t@\b=\bA\a=\aB\6B\4\2\0016\4\0\0'\6\5\0B\4\2\0029\4C\4'\6=\0B\4\2\0016\4\0\0'\6\5\0B\4\2\0029\4C\4'\6A\0B\4\2\0012\0\0ÄK\0\1\0\19load_extension\15extensions\16media_files\14filetypes\1\0\1\rfind_cmd\afd\1\b\0\0\bpng\twebp\bjpg\tjpeg\bmp4\twebm\bpdf\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\1\nfuzzy\2\fpickers\16git_commits\1\0\0\1\0\0\f<C-M-d>\1\0\0\0\14git_files\1\0\1\18results_title\1\15find_files\1\0\0\1\0\1\18results_title\1\rdefaults\1\0\0\rmappings\6n\6i\1\0\0\n<c-q>\1\0\0\16open_qflist\19send_to_qflist\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\17path_display\1\2\0\0\rabsolute\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\1\vmirror\1\1\0\3\nwidth\4\0ÄÄ†ˇ\3\19preview_cutoff\3x\20prompt_position\btop\22vimgrep_arguments\1\0\v\rwinblend\3\0\ruse_less\2\20layout_strategy\15horizontal\21sorting_strategy\14ascending\23selection_strategy\nreset\18results_title\1\17initial_mode\vinsert\17entry_prefix\a  \20selection_caret\t‚û§ \18prompt_prefix\n Ôë´ \19color_devicons\2\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\0\25telescope.previewers\28telescope.actions.state\22telescope.actions\frequire\0", "config", "telescope.nvim")

vim.cmd [[ packadd nvim-spectre ]]

-- Config for: nvim-spectre
try_loadstring("\27LJ\2\nß\18\0\0\a\0<\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3#\0005\4\26\0005\5\27\0=\5\28\0045\5\30\0005\6\29\0=\6\31\0055\6 \0=\6!\5=\5\"\4=\4$\0035\4%\0005\5&\0=\5\28\0045\5(\0005\6'\0=\6\31\0055\6)\0=\6!\5=\5\"\4=\4*\3=\3+\0025\3-\0005\4,\0=\4.\0035\0040\0005\5/\0=\5\31\4=\4\"\3=\0031\0025\0034\0005\0042\0005\0053\0=\5\"\4=\0045\0035\0046\0=\0047\3=\0038\2B\0\2\0016\0009\0009\0:\0'\2;\0B\0\2\1K\0\1\0i    augroup SpectreConfig\n    au!\n    au FileType spectre_panel setlocal nolist\n    augroup END\n    \bcmd\bvim\fdefault\freplace\1\0\1\bcmd\bsed\tfind\1\0\0\1\2\0\0\16ignore-case\1\0\1\bcmd\aag\19replace_engine\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\bsed\1\0\0\1\0\1\bcmd\bsed\16find_engine\aag\1\0\3\nvalue\r--hidden\ticon\b[H]\tdesc\16hidden file\1\0\0\1\0\3\ticon\b[I]\nvalue\a-i\tdesc\16ignore case\1\3\0\0\14--vimgrep\a-s\1\0\1\bcmd\aag\arg\1\0\0\foptions\vhidden\1\0\3\nvalue\r--hidden\ticon\b[H]\tdesc\16hidden file\16ignore-case\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\1\bcmd\arg\fmapping\25toggle_ignore_hidden\1\0\3\bcmd=<cmd>lua require('spectre').change_options('hidden')<CR>\bmap\ath\tdesc\25toggle search hidden\23toggle_ignore_case\1\0\3\bcmdB<cmd>lua require('spectre').change_options('ignore-case')<CR>\bmap\ati\tdesc\23toggle ignore case\21change_view_mode\1\0\3\bcmd2<cmd>lua require('spectre').change_view()<CR>\bmap\14<leader>v\tdesc\28change result view mode\16run_replace\1\0\3\bcmd:<cmd>lua require('spectre.actions').run_replace()<CR>\bmap\14<leader>R\tdesc\16replace all\21show_option_menu\1\0\3\bcmd3<cmd>lua require('spectre').show_options()<CR>\bmap\14<leader>o\tdesc\16show option\16replace_cmd\1\0\3\bcmd:<cmd>lua require('spectre.actions').replace_cmd()<CR>\bmap\14<leader>c\tdesc\30input replace vim command\15send_to_qf\1\0\3\bcmd9<cmd>lua require('spectre.actions').send_to_qf()<CR>\bmap\n<c-q>\tdesc\30send all item to quickfix\15enter_file\1\0\3\bcmd;<cmd>lua require('spectre.actions').select_entry()<CR>\bmap\t<cr>\tdesc\22goto current file\16delete_line\1\0\0\1\0\3\bcmd-<cmd>lua require('spectre').delete()<CR>\bmap\add\tdesc\24toggle current item\14highlight\1\0\3\freplace\rDiffText\aui\vString\vsearch\20DiffAddAsDelete\1\0\a\rline_sepÉ\1‚îî‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ\19color_devicons\2\19is_insert_mode\1\19result_padding\n‚îÇ  \23is_open_target_win\2\19line_sep_startÉ\1‚îå‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ\20replace_vim_cmd\tcfdo\nsetup\fspectre\frequire\0", "config", "nvim-spectre")

vim.cmd [[ packadd lir.nvim ]]

-- Config for: lir.nvim
try_loadstring("\27LJ\2\n|\0\0\3\0\b\0\0156\0\0\0009\0\1\0009\0\2\0+\2\2\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\4Ä6\0\3\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\rwincmd q\bcmd\17lir_is_float\6w\bvim\18remove_buffer\blib\vConfigE\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\5¿\fnorm! j\bcmd\bvim\16toggle_markE\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\5¿\fnorm! k\bcmd\bvim\16toggle_mark \0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\0\1\vborder\vsingleŒ\2\0\1\n\1\15\00166\1\0\0009\1\1\0019\1\2\1\f\3\0\0X\3\1Ä'\3\3\0'\4\4\0B\1\3\0026\2\0\0009\2\1\0029\2\5\2\18\4\1\0B\2\2\2\t\2\0\0X\2\vÄ6\2\0\0009\2\1\0029\2\6\0026\4\0\0009\4\a\0049\4\b\4B\4\1\2'\5\4\0B\2\3\2\18\1\2\0X\2\14Ä6\2\0\0009\2\1\0029\2\t\2\18\4\1\0B\2\2\2\t\2\0\0X\2\aÄ6\2\0\0009\2\1\0029\2\6\2\18\4\1\0'\5\n\0B\2\3\2\18\1\2\0006\2\0\0009\2\v\2'\4\f\0006\5\0\0009\5\1\0059\5\r\5-\a\0\0009\a\14\a\18\t\1\0B\a\2\0A\5\0\2&\4\5\4B\2\2\1K\0\1\0\1¿\25path_remove_trailing\16fnameescape\ae \bcmd\a:h\16isdirectory\bcwd\tloop\16fnamemodify\17filereadable\a:p\6%\vexpand\afn\bvim\0¢\1\0\1\t\2\a\0\24+\1\0\0\15\0\0\0X\2\14Ä-\2\0\0009\2\0\0026\4\1\0009\4\2\0049\4\3\0046\6\1\0009\6\2\0069\6\4\6\18\b\0\0B\6\2\2'\a\5\0B\4\3\0A\2\0\2\18\1\2\0-\2\1\0009\2\6\2\f\4\1\0X\4\1Ä+\4\0\0B\2\2\1K\0\1\0\1¿\3¿\tinit\a:p\vexpand\16fnamemodify\afn\bvim\25path_remove_trailing¿\2\0\1\a\2\r\00156\1\0\0009\1\1\0019\1\2\1\f\3\0\0X\3\1Ä'\3\3\0'\4\4\0B\1\3\0026\2\0\0009\2\1\0029\2\5\2\18\4\1\0B\2\2\2\t\2\0\0X\2\vÄ6\2\0\0009\2\1\0029\2\6\0026\4\0\0009\4\a\0049\4\b\4B\4\1\2'\5\4\0B\2\3\2\18\1\2\0X\2\14Ä6\2\0\0009\2\1\0029\2\t\2\18\4\1\0B\2\2\2\t\2\0\0X\2\aÄ6\2\0\0009\2\1\0029\2\6\2\18\4\1\0'\5\n\0B\2\3\2\18\1\2\0-\2\0\0009\2\v\2\15\0\1\0X\4\6Ä-\4\1\0009\4\f\4\18\6\1\0B\4\2\2\14\0\4\0X\5\1Ä+\4\0\0B\2\2\1K\0\1\0\3¿\1¿\25path_remove_trailing\vtoggle\a:h\16isdirectory\bcwd\tloop\16fnamemodify\17filereadable\a:p\6%\vexpand\afn\bvim\0ç\t\1\0\f\0M\0l4\0\0\0006\1\0\0009\1\1\0019\1\2\0016\2\0\0009\2\1\0029\2\3\0026\3\4\0'\5\5\0B\3\2\0026\4\4\0'\6\6\0B\4\2\0026\5\4\0'\a\a\0B\5\2\0026\6\4\0'\b\b\0B\6\2\0026\a\4\0'\t\t\0B\a\2\0029\a\n\a5\t\v\0005\n\r\0009\v\f\4=\v\14\n9\v\f\4=\v\15\n9\v\f\4=\v\16\n9\v\17\4=\v\18\n9\v\19\4=\v\20\n9\v\21\4=\v\22\n9\v\23\4=\v\24\n9\v\23\4=\v\25\n3\v\26\0=\v\27\n9\v\28\4=\v\29\n9\v\30\4=\v\31\n9\v \4=\v!\n9\v\"\4=\v#\n9\v$\4=\v%\n9\v&\4=\v'\n9\v(\4=\v)\n9\v*\4=\v+\n9\v,\5=\v-\n3\v.\0=\v/\n3\v0\0=\v1\n9\v\"\6=\v2\n9\v3\6=\v4\n9\v5\6=\v6\n=\n7\t5\n8\0003\v9\0=\v:\n=\n;\tB\a\2\0016\a\4\0'\t<\0B\a\2\0029\a\n\a5\t=\0B\a\2\0013\a?\0=\a>\0003\aA\0=\a@\0003\aC\0=\aB\0009\aD\2'\tE\0'\nF\0005\vG\0B\a\4\0019\aD\2'\tH\0'\nE\0B\a\3\0016\aI\0009\aJ\a9\aK\a'\tL\0+\n\1\0B\a\3\0016\a\0\0=\0\t\a2\0\0ÄK\0\1\0¬\1\n    command! -bar -nargs=? -complete=dir LirExplore call v:lua.Config.lir.explore(<f-args>)\n\n    command! -bar -nargs=? -complete=dir LirFloat call v:lua.Config.lir.open_float(<f-args>)\n  \14nvim_exec\bapi\bvim\25DevIconLirFolderNode\1\0\1\fdefault\2\14Directory\18LirFolderIcon\fhi_link\0\17toggle_float\0\15open_float\0\fexplore\1\0\1\17show_ignored\2\19lir.git_status\nfloat\rwin_opts\0\1\0\1\rwinblend\3\0\rmappings\6p\npaste\6x\bcut\6y\6K\0\6J\0\6t\16toggle_mark\6d\vdelete\n<C-h>\23toggle_show_hidden\agy\14yank_path\n<C-]>\acd\6c\tcopy\6r\vrename\6a\fnewfile\6m\nmkdir\6q\0\6h\6-\aup\n<C-t>\ftabedit\n<C-v>\vvsplit\n<C-s>\nsplit\6l\6o\t<CR>\1\0\0\tedit\1\0\3\16hide_cursor\2\20devicons_enable\2\22show_hidden_files\2\nsetup\blir\26lir.clipboard.actions\21lir.mark.actions\16lir.actions\14lir.float\frequire\ahl\nutils\vcommon\vConfig\0", "config", "lir.nvim")

vim.cmd [[ packadd diffview.nvim ]]

-- Config for: diffview.nvim
try_loadstring("\27LJ\2\nˇ\r\0\0\n\0M\0Â\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0004\1\0\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0005\6\v\0=\6\f\5=\5\r\0045\5\14\0004\6\0\0=\6\15\0054\6\0\0=\6\16\5=\5\17\0044\5\0\0=\5\18\0045\5\19\0005\6\21\0\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6#\0055\6%\0\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t$\0B\a\2\2=\a'\6\18\a\0\0'\t(\0B\a\2\2=\a)\6\18\a\0\0'\t(\0B\a\2\2=\a*\6\18\a\0\0'\t+\0B\a\2\2=\a,\6\18\a\0\0'\t-\0B\a\2\2=\a.\6\18\a\0\0'\t-\0B\a\2\2=\a/\6\18\a\0\0'\t0\0B\a\2\2=\a1\6\18\a\0\0'\t0\0B\a\2\2=\a2\6\18\a\0\0'\t3\0B\a\2\2=\a4\6\18\a\0\0'\t5\0B\a\2\2=\a6\6\18\a\0\0'\t7\0B\a\2\2=\a8\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6\r\0055\6:\0\18\a\0\0'\t9\0B\a\2\2=\a;\6\18\a\0\0'\t<\0B\a\2\2=\a=\6\18\a\0\0'\t>\0B\a\2\2=\a?\6\18\a\0\0'\t@\0B\a\2\2=\aA\6\18\a\0\0'\tB\0B\a\2\2=\aC\6\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t$\0B\a\2\2=\a'\6\18\a\0\0'\t(\0B\a\2\2=\a)\6\18\a\0\0'\t(\0B\a\2\2=\a*\6\18\a\0\0'\t+\0B\a\2\2=\a,\6\18\a\0\0'\t-\0B\a\2\2=\a.\6\18\a\0\0'\t-\0B\a\2\2=\a/\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\31\0B\a\2\2=\a \6\18\a\0\0'\t!\0B\a\2\2=\a\"\6=\6D\0055\6F\0\18\a\0\0'\tE\0B\a\2\2=\a\22\6\18\a\0\0'\tG\0B\a\2\2=\aH\6=\6I\5=\5J\4B\2\2\0016\2K\0009\2L\2=\1\3\2K\0\1\0\vConfig\a_G\17key_bindings\17option_panel\6q\nclose\1\0\0\vselect\23file_history_panel\azM\20close_all_folds\azR\19open_all_folds\6y\14copy_hash\f<C-A-d>\21open_in_diffview\ag!\1\0\0\foptions\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6s\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\17select_entry\t<cr>\16focus_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<C-w>gf\18goto_file_tab\15<C-w><C-f>\20goto_file_split\agf\19goto_file_edit\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\15file_panel\17tree_options\1\0\2\17flatten_dirs\2\20folder_statuses\16only_folded\1\0\4\nwidth\3#\vheight\3\n\18listing_style\ttree\rposition\tleft\nsigns\1\0\2\16fold_closed\bÔë†\14fold_open\bÔëº\nicons\1\0\2\16folder_open\bÓóæ\18folder_closed\bÓóø\1\0\3\14use_icons\2\21enhanced_diff_hl\2\18diff_binaries\1\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0", "config", "diffview.nvim")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
