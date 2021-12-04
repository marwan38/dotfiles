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
    config = { "\27LJ\2\n™\r\0\0\n\0M\0—\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0004\1\0\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0005\6\v\0=\6\f\5=\5\r\0045\5\14\0004\6\0\0=\6\15\0054\6\0\0=\6\16\5=\5\17\0044\5\0\0=\5\18\0045\5\19\0005\6\21\0\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6=\6\31\0055\6!\0\18\a\0\0'\t \0B\a\2\2=\a\"\6\18\a\0\0'\t \0B\a\2\2=\a#\6\18\a\0\0'\t$\0B\a\2\2=\a%\6\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t'\0B\a\2\2=\a(\6\18\a\0\0'\t)\0B\a\2\2=\a*\6\18\a\0\0'\t)\0B\a\2\2=\a+\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\29\0B\a\2\2=\a,\6\18\a\0\0'\t-\0B\a\2\2=\a.\6\18\a\0\0'\t/\0B\a\2\2=\a0\6\18\a\0\0'\t1\0B\a\2\2=\a2\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6=\6\r\0055\0064\0\18\a\0\0'\t3\0B\a\2\2=\a5\6\18\a\0\0'\t6\0B\a\2\2=\a7\6\18\a\0\0'\t8\0B\a\2\2=\a9\6\18\a\0\0'\t:\0B\a\2\2=\a;\6\18\a\0\0'\t<\0B\a\2\2=\a=\6\18\a\0\0'\t \0B\a\2\2=\a\"\6\18\a\0\0'\t \0B\a\2\2=\a#\6\18\a\0\0'\t$\0B\a\2\2=\a%\6\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t'\0B\a\2\2=\a(\6\18\a\0\0'\t)\0B\a\2\2=\a*\6\18\a\0\0'\t)\0B\a\2\2=\a+\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t>\0B\a\2\2=\a?\6\18\a\0\0'\t@\0B\a\2\2=\aA\6\18\a\0\0'\tB\0B\a\2\2=\aC\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6=\6D\0055\6F\0\18\a\0\0'\tE\0B\a\2\2=\a\22\6\18\a\0\0'\tG\0B\a\2\2=\aH\6=\6I\5=\5J\4B\2\2\0016\2K\0009\2L\2=\1\3\2K\0\1\0\vConfig\a_G\17key_bindings\17option_panel\6q\nclose\1\0\0\vselect\23file_history_panel\f<C-w>gf\18goto_file_tab\15<C-w><C-f>\20goto_file_split\agf\14goto_file\azM\20close_all_folds\azR\19open_all_folds\6y\14copy_hash\f<C-A-d>\21open_in_diffview\ag!\1\0\0\foptions\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6s\18<2-LeftMouse>\6o\17select_entry\t<cr>\16focus_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\6-\23toggle_stage_entry\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\15file_panel\17tree_options\1\0\2\17flatten_dirs\2\20folder_statuses\16only_folded\1\0\4\rposition\tleft\vheight\3\n\nwidth\3#\18listing_style\ttree\nsigns\1\0\2\16fold_closed\bÔë†\14fold_open\bÔëº\nicons\1\0\2\16folder_open\bÓóæ\18folder_closed\bÓóø\1\0\3\18diff_binaries\1\14use_icons\2\21enhanced_diff_hl\2\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/diffview.nvim",
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
    config = { "\27LJ\2\nÉ\4\0\0\3\1'\0^5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\0\1=\1\3\0-\1\0\0009\1\0\1=\1\4\0-\1\0\0009\1\0\1=\1\5\0-\1\0\0009\1\0\1=\1\6\0-\1\0\0009\1\0\1=\1\a\0-\1\0\0009\1\0\1=\1\b\0-\1\0\0009\1\0\1=\1\t\0-\1\0\0009\1\n\1=\1\v\0-\1\0\0009\1\n\1=\1\f\0-\1\0\0009\1\n\1=\1\r\0-\1\0\0009\1\n\1=\1\14\0-\1\0\0009\1\n\1=\1\15\0-\1\0\0009\1\n\1=\1\16\0-\1\0\0009\1\17\1=\1\18\0-\1\0\0009\1\17\1=\1\19\0-\1\0\0009\1\17\1=\1\20\0-\1\0\0009\1\21\1=\1\22\0-\1\0\0009\1\21\1=\1\23\0-\1\0\0009\1\21\1=\1\24\0-\1\0\0009\1\21\1=\1\25\0-\1\0\0009\1\26\1=\1\27\0-\1\0\0009\1\26\1=\1\28\0-\1\0\0009\1\26\1=\1\29\0-\1\0\0009\1\30\1=\1\31\0-\1\0\0009\1\30\1=\1 \0-\1\0\0009\1\30\1=\1!\0-\1\0\0009\1\30\1=\1\"\0-\1\0\0009\1\26\1=\1#\0006\1$\0009\1%\0019\1&\1B\1\1\0028\1\1\0L\1\2\0\5Ä\tmode\afn\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\vorange\aRx\aRv\aRc\6R\bred\aix\aic\6i\ngreen\6\19\6S\6s\6\22\6V\6v\fmagenta\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\6n\1\0\0\tbluex\0\1\a\0\4\0\0146\1\0\0006\3\1\0'\4\2\0\18\5\0\0&\4\5\4B\1\3\3\15\0\1\0X\3\1ÄL\2\2\0006\3\1\0'\5\3\0\18\6\0\0&\5\6\5D\3\2\0\25galaxyline.provider_\26galaxyline.providers.\frequire\npcall8\0\0\3\1\2\0\v'\0\0\0\21\1\0\0-\2\0\0\1\1\2\0X\1\5ÄU\1\4Ä\18\1\0\0'\2\1\0&\0\2\1X\1˜L\0\2\0\0¿\6 \5m\1\1\5\1\b\0\f5\1\6\0005\2\1\0003\3\0\0=\3\2\0025\3\3\0-\4\0\0009\4\4\4>\4\2\3=\3\5\2=\2\a\0012\0\0ÄL\1\2\0\5Ä\18FillerSection\1\0\0\14highlight\abg\1\2\0\0\tNONE\rprovider\1\0\0\0T\0\0\3\1\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2-\1\0\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\0¿\23nvim_win_get_width\bapi\bvim\20\1\1\2\0\1\0\0033\1\0\0002\0\0ÄL\1\2\0\0`\0\0\3\1\3\0\b6\0\0\0'\2\1\0B\0\2\2B\0\1\1-\0\0\0009\0\2\0B\0\1\1K\0\1\0\2¿\20load_galaxyline#nvim-config.plugins.galaxyline\frequire)\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\2¿\20load_galaxyline\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä ¥\3\0\0\6\1\a\0\0165\0\0\0006\1\1\0009\1\2\1'\3\3\0-\4\0\0B\4\1\2&\3\4\3B\1\2\0016\1\1\0009\1\4\0019\1\5\1B\1\1\0028\1\1\0'\2\6\0&\1\2\1L\1\2\0\b¿\6 \tmode\afn\27hi GalaxyViMode guifg=\bcmd\bvim\1\0\29\6V\16VISUAL LINE\bniV\vNORMAL\bniR\vNORMAL\bniI\vNORMAL\bno\22\vNORMAL\bnoV\vNORMAL\bnov\vNORMAL\ano\vNORMAL\6n\vNORMAL\aic\15COMPLETION\6R\fREPLACE\aRv\fREPLACE\6c\fCOMMAND\ace\14NORMAL EX\6r\vPROMPT\6!\nSHELL\ar?\fCONFIRM\6s\vSELECT\6t\rTERMINAL\6\22\17VISUAL BLOCK\6i\vINSERT\arm\vPROMPT\6v\vVISUAL\acv\aEX\aRx\fREPLACE\6\19\17SELECT BLOCK\aRc\fREPLACE\aix\15COMPLETION\6S\16SELECT LINE«\2\0\0\b\1\n\3=6\0\0\0006\2\1\0009\2\2\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\21\1\0\0\26\1\0\1\b\1\1\0X\1\nÄ-\1\0\0009\1\5\1\18\3\0\0\21\4\0\0\21\5\0\0\26\5\0\5\28\5\0\5 \4\5\4B\1\3\2\18\0\1\0006\1\0\0006\3\1\0009\3\2\0039\3\6\3'\5\4\0B\3\2\0A\1\0\2\21\2\1\0\26\2\0\2\b\2\1\0X\2\nÄ-\2\0\0009\2\a\2\18\4\1\0\21\5\1\0\21\6\1\0\26\6\0\6\28\6\0\6 \5\6\5B\2\3\2\18\1\2\0\18\2\0\0'\3\b\0\18\4\1\0&\2\4\2\21\3\2\0\26\3\2\3\b\3\1\0X\3\nÄ-\3\0\0009\3\t\3\18\5\2\0\21\6\2\0\21\a\2\0\26\a\2\a\28\a\2\a \6\a\6B\3\3\2\18\2\3\0L\2\2\0\0¿\19str_center_pad\6:\18str_right_pad\bcol\17str_left_pad\6.\tline\afn\bvim\rtostring\4\0\bx\0\0\a\0\t\1\0206\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\2\1'\3\4\0B\1\2\0026\2\5\0009\2\6\2#\4\1\0\24\4\0\4B\2\2\3'\4\a\0\18\5\2\0'\6\b\0&\4\6\4L\4\2\0\a% \6 \tmodf\tmath\6$\6.\tline\afn\bvim»\1;\0\0\4\0\5\0\b'\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0B\1\2\2&\0\1\0L\0\2\0\6$\tline\afn\bvim\n ÓÇ° x\0\0\5\0\6\0\0176\0\0\0009\0\1\0006\2\0\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\2\21\0\0\0)\1\0\0\1\1\0\0X\0\4Ä6\0\0\0009\0\4\0009\0\5\0L\0\2\0K\0\1\0\rfiletype\abo\20buf_get_clients\blsp\rtbl_keys\bvim…\1\0\0\6\0\t\0!5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2Ä+\1\1\0L\1\2\0006\1\1\0009\1\4\0019\1\5\1)\3\0\0B\1\2\2)\2x\0\1\2\1\0X\1\fÄ6\1\1\0009\1\6\0016\3\1\0009\3\a\0039\3\b\3)\5\0\0B\3\2\0A\1\0\2\21\1\1\0)\2\0\0\0\2\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\20buf_get_clients\blsp\rtbl_keys\rwinwidth\afn\rfiletype\abo\bvim\1\0\1\5\2Ö\1\0\0\2\0\a\0\0196\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\aÄ'\0\3\0006\1\0\0009\1\1\0019\1\4\1&\0\1\0L\0\2\0X\0\6Ä'\0\5\0006\1\0\0009\1\1\0019\1\6\1&\0\1\0L\0\2\0K\0\1\0\ftabstop\nTABS \15shiftwidth\fSPACES \14expandtab\abo\bvim·\1\0\0\5\0\f\0&6\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\1\6\1\4\0X\2\2Ä\f\2\1\0X\2\1Ä\18\2\0\0\18\4\2\0009\2\5\2B\2\2\2\18\1\2\0\a\0\6\0X\2\5Ä'\2\a\0\18\3\1\0&\2\3\2L\2\2\0X\2\rÄ\a\0\b\0X\2\5Ä'\2\t\0\18\3\1\0&\2\3\2L\2\2\0X\2\6Ä\a\0\n\0X\2\4Ä'\2\v\0\18\3\1\0&\2\3\2L\2\2\0\18\4\0\0009\2\5\0D\2\2\0\tÔÖπ \bmac\tÔÖ∫ \bdos\tÔÖº \tunix\nupper\5\17fileencoding\15fileformat\abo\bvim\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n Ôêò \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä ˝\29\1\0\19\0•\1\2°\0036\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\0016\2\4\0'\4\5\0B\2\2\0026\3\4\0'\5\6\0B\3\2\0029\4\a\0025\5\t\0=\5\b\2+\5\0\0009\6\n\0015\b\v\0B\6\2\0029\a\f\0015\t\r\0B\a\2\0029\b\14\1'\n\15\0'\v\16\0B\b\3\2\a\b\17\0X\b\3Ä\18\b\a\0\18\a\6\0\18\6\b\0009\b\18\1'\n\15\0005\v\19\0=\6\20\v=\a\21\vB\b\3\0019\b\18\1'\n\22\0005\v\23\0=\6\20\v=\a\21\vB\b\3\0019\b\24\1'\n\22\0B\b\2\0016\b\25\0009\b\26\b9\b\27\b\a\b\28\0X\b\5Ä5\b\29\0=\6\20\b=\a\21\b\18\5\b\0X\b\4Ä5\b\30\0=\6\20\b=\a\21\b\18\5\b\0003\b\31\0003\t \0003\n!\0003\v\"\0006\f#\0003\r%\0=\r$\f6\f#\0003\r'\0=\r&\f6\f\25\0009\f(\f9\f)\f'\14*\0+\15\1\0B\f\3\0014\f\0\0=\f+\0044\f\0\0=\f,\0044\f\0\0=\f-\0044\f\0\0=\f.\0044\f\0\0=\f/\0044\f\b\0005\r5\0005\0141\0003\0150\0=\0152\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\0146\r>\r\1\f5\r;\0005\0148\0003\0157\0=\0152\0145\15:\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14<\r>\r\2\f5\rB\0005\14=\0009\15>\3=\15?\0144\15\3\0\18\16\t\0'\18@\0B\16\2\0029\16A\16>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14C\r>\r\3\f5\rG\0005\14D\0009\15>\3=\15?\0145\15F\0009\16E\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14H\r>\r\4\f5\rL\0005\14I\0009\15J\3=\15?\0144\15\3\0009\16K\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14M\r>\r\5\f5\rO\0005\14N\0009\15J\3=\15?\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14P\r>\r\6\f5\rR\0005\14Q\0009\15J\3=\15?\0144\15\3\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14S\r>\r\a\f=\f+\0044\f\3\0\18\r\n\0)\15\1\0B\r\2\0?\r\0\0=\f,\0044\f\14\0005\rV\0005\14T\0005\15U\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14W\r>\r\1\f5\r[\0005\14X\0005\15Z\0009\16Y\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14\\\r>\r\2\f5\r`\0005\14]\0005\15_\0009\16^\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14a\r>\r\3\f5\rd\0005\14b\0005\15c\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14e\r>\r\4\f5\rj\0005\14g\0003\15f\0=\0152\0145\15h\0009\16\21\5>\16\2\15=\15i\0144\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14k\r>\r\5\f5\rp\0005\14m\0003\15l\0=\0152\0145\15n\0009\16\21\5>\16\2\15=\15i\0145\15o\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14q\r>\r\6\f5\ru\0005\14s\0003\15r\0=\0152\0145\15t\0009\16\21\5>\16\2\15=\15i\0144\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14v\r>\r\a\f5\r|\0005\14x\0003\15w\0=\0152\0143\15y\0=\15?\0145\15z\0009\16\21\5>\16\2\15=\15i\0145\15{\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14}\r>\r\b\f5\rÇ\0005\14\0003\15~\0=\0152\14\18\15\v\0)\17d\0B\15\2\2=\15?\0145\15Ä\0009\16\21\5>\16\2\15=\15i\0145\15Å\0009\16^\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14É\r>\r\t\f5\rà\0005\14Ö\0003\15Ñ\0=\0152\14\18\15\v\0)\17P\0B\15\2\2=\15?\0145\15Ü\0009\16\21\5>\16\2\15=\15i\0145\15á\0009\16K\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14â\r>\r\n\f5\rê\0005\14ã\0003\15ä\0=\0152\0149\15å\3=\15?\0145\15ç\0009\16\21\5>\16\2\15=\15i\0145\15è\0009\16é\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ë\r>\r\v\f5\rî\0005\14í\0009\15å\3=\15?\0145\15ì\0009\16é\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ï\r>\r\f\f\18\r\n\0)\15\3\0B\r\2\0?\r\1\0=\f-\0044\f\4\0005\rò\0005\14ó\0003\15ñ\0=\0152\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\0146\r>\r\1\f5\rú\0005\14ô\0005\15ö\0009\16\21\5>\16\2\15=\15i\0145\15õ\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ù\r>\r\2\f5\r†\0005\14û\0009\15>\3=\15?\0145\15ü\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14°\r>\r\3\f=\f.\0044\f\3\0005\r£\0005\14¢\0004\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14§\r>\r\1\f=\f/\0042\0\0ÄK\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\14SFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14SFileName\15BufferType\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\17FileTypeName\1\0\0\1\0\0\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\1\4\0\0\0\0\tbold\vviolet\1\2\0\0\tNONE\24check_git_workspace\1\0\1\14separator\6 \0\15FileFormat\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\1\14separator\a  \0\15IndentInfo\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\a  \ticon\tÔÄº \0\14LspClient\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\0\1\0\2\14separator\a  \ticon\tÔÇÖ \0\rNumLines\1\0\0\1\2\0\0\tNONE\1\0\0\0\fPercent\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\1\14separator\6 \0\rLineInfo\1\0\0\24separator_highlight\1\2\0\0\tNONE\1\0\1\14separator\6 \0\19DiagnosticInfo\1\0\0\1\4\0\0\0\0\tbold\1\0\2\ticon\n ÔÅö \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\1\4\0\0\0\0\tbold\tcyan\1\0\2\ticon\n ÔÅ™ \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\4\0\0\0\0\tbold\vyellow\1\0\2\ticon\n ÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\4\0\0\0\0\tbold\1\0\2\ticon\n ÔÅó \rprovider\20DiagnosticError\15DiffRemove\1\0\0\1\0\3\14separator\5\ticon\tÔëò \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\3\14separator\5\ticon\tÔëô \rprovider\17DiffModified\fDiffAdd\1\0\0\ngreen\18hide_in_width\1\0\3\14separator\5\ticon\tÔëó \rprovider\fDiffAdd\rFileName\1\0\0\1\4\0\0\0\0\tbold\fmagenta\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color\rfileinfo\14condition\21buffer_not_empty\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\15RainbowRed\1\0\0\14highlight\tblue\rprovider\1\0\0\0\21short_line_right\20short_line_left\nright\bmid\tleftm    augroup galaxyline_config\n      au!\n      au ColorScheme * lua UpdateGalaxyline()\n    augroup END\n  \14nvim_exec\bapi\0\21ReloadGalaxyline\0\21UpdateGalaxyline\a_G\0\0\0\0\1\0\t\fmagenta\f#c678dd\tblue\f#51afef\vviolet\f#a9a1e1\vorange\f#FF8800\rdarkblue\f#081633\tcyan\f#008080\vyellow\f#ECBE7B\ngreen\f#98be65\bred\f#ec5f67\1\0\t\fmagenta\f#c678dd\tblue\f#4596cd\vviolet\f#958ec7\vorange\f#FF8800\rdarkblue\f#081633\tcyan\f#008080\vyellow\f#ECBE7B\ngreen\f#7f9f54\bred\f#ec5f67\nlight\15background\6o\bvim\fhi_link\1\0\1\bgui\tNONE\17StatusLineNC\abg\afg\1\0\1\bgui\tNONE\ahi\0061\freverse\15StatusLine\16get_hl_attr\1\3\0\0\15StatusLine\vNormal\vget_bg\1\3\0\0\15StatusLine\vNormal\vget_fg\1\r\0\0\rNvimTree\nvista\tdbui\vpacker\18fugitiveblame\15LspTrouble\18DiffviewFiles\29DiffviewFileHistoryPanel\26DiffviewFHOptionPanel\fOutline\14dashboard\17NeogitStatus\20short_line_list\fsection\25galaxyline.condition\15galaxyline\frequire\ahl\nutils\vcommon\vConfig\3ÄÄ¿ô\4\27ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/NTBBloodbath/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n¢\r\0\0\5\0\30\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\0016\0\26\0009\0\27\0009\0\28\0'\2\29\0+\3\1\0B\0\3\1K\0\1\0É\1    hi def link GitSignsAdd diffAdded\n    hi def link GitSignsChange diffChanged\n    hi def link GitSignsDelete diffRemoved\n  \14nvim_exec\bapi\bvim\14diff_opts\1\0\3\14algorithm\14histogram\21indent_heuristic\2\rinternal\2\16watch_index\1\0\1\rinterval\3Ë\a\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\f\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\vbuffer\2\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>hb0<cmd>lua require\"gitsigns\".blame_line()<CR>\fnoremap\2\16n <leader>d2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\tx ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\nsigns\1\0\4\vlinehl\1\nnumhl\1\20update_debounce\3d\18sign_priority\3\6\14topdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ttext\b‚Äæ\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\17changedelete\1\0\4\vlinehl\21GitSignsChangeLn\ttext\b‚ñç\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ttext\b‚ñç\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\vlinehl\21GitSignsChangeLn\ttext\b‚ñç\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\vlinehl\18GitSignsAddLn\ttext\b‚ñç\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0" },
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
  ["lsp-trouble.nvim"] = {
    config = { "\27LJ\2\nC\0\0\4\1\3\0\5-\0\0\0009\0\0\0'\2\1\0'\3\2\0D\0\3\0\1¿\fTrouble\rfiletype\25find_buf_with_option2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\19LspTroubleOpen\bcmd\bvim>\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\31wincmd p | LspTroubleClose\bcmd\bvimœ\5\1\0\b\0\22\0\0316\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0016\2\0\0'\4\5\0B\2\2\0029\2\6\0025\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\4B\2\2\0019\2\f\0003\4\r\0003\5\14\0003\6\15\0005\a\16\0B\2\5\0027\2\17\0006\2\18\0009\2\19\0029\2\20\2'\4\21\0+\5\1\0B\2\3\0012\0\0ÄK\0\1\0g    augroup LspTroubleConfig\n      au!\n      au FileType Trouble setlocal cc=\n    augroup END\n    \14nvim_exec\bapi\bvim\27LspTroubleCustomToggle\1\0\2\nfocus\2\20remember_height\2\0\0\0\23create_buf_toggler\nsigns\1\0\4\fwarning\bÔî©\thint\bÔ†µ\nerror\bÔôô\16information\bÔëâ\16action_keys\1\0\v\tjump\t<cr>\frefresh\6R\tnext\6j\fpreview\6p\vcancel\n<esc>\nclose\6q\rprevious\6k\15open_folds\azR\16close_folds\azM\19toggle_preview\6P\16toggle_mode\6m\1\0\n\14auto_open\1\tmode\14workspace\14fold_open\bÔëº\15auto_close\1\nicons\2\17indent_lines\2\16fold_closed\bÔë†\17auto_preview\1\29use_lsp_diagnostic_signs\1\vheight\3\n\nsetup\ftrouble\nutils\vcommon\vConfig\20nvim-config.lib\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim",
    url = "https://github.com/folke/lsp-trouble.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nü\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\4\15max_height\3\f\14max_width\3P\16hint_prefix\t‚óè \16hint_enable\1\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
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
    config = { "\27LJ\2\n•\6\0\0\14\3\26\3Å\1-\0\0\0009\0\0\0'\2\1\0B\0\2\2-\1\0\0009\1\2\1'\3\1\0B\1\2\2-\2\1\0009\2\3\2\18\4\1\0B\2\2\0029\3\4\2*\4\0\0\3\4\3\0X\3\2Ä)\3ˇˇX\4\1Ä)\3\1\0\18\6\2\0009\4\5\2\29\a\1\3B\4\3\2\18\a\2\0009\5\5\2\29\b\2\3B\5\3\2-\6\2\0009\6\6\6'\b\a\0005\t\t\0\18\f\5\0009\n\b\5B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\v\0005\t\f\0\18\f\4\0009\n\b\4B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\r\0005\t\14\0\18\f\5\0009\n\b\5B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\15\0005\t\17\0-\n\0\0009\n\2\n'\f\16\0+\r\1\0B\n\3\2\14\0\n\0X\v\3Ä\18\f\5\0009\n\b\5B\n\2\2=\n\n\t-\n\0\0009\n\0\n'\f\16\0+\r\1\0B\n\3\2\14\0\n\0X\v\aÄ-\n\0\0009\n\0\n'\f\18\0B\n\2\2\14\0\n\0X\v\1Ä\18\n\0\0=\n\19\t-\n\0\0009\n\20\n'\f\16\0+\r\1\0B\n\3\2=\n\21\tB\6\3\1-\6\2\0009\6\6\6'\b\22\0005\t\24\0-\n\0\0009\n\2\n'\f\23\0+\r\1\0B\n\3\2\14\0\n\0X\v\3Ä\18\f\5\0009\n\b\5B\n\2\2=\n\n\t-\n\0\0009\n\0\n'\f\23\0+\r\1\0B\n\3\2\14\0\n\0X\v\aÄ-\n\0\0009\n\0\n'\f\25\0B\n\2\2\14\0\n\0X\v\1Ä\18\n\0\0=\n\19\t-\n\0\0009\n\20\n'\f\23\0+\r\1\0B\n\3\2=\n\21\tB\6\3\1K\0\1\0\1¿\0¿\2¿\16diffRemoved\1\0\0\15DiffDelete\30NeogitDiffDeleteHighlight\bgui\fget_gui\afg\14diffAdded\1\0\0\fDiffAdd\27NeogitDiffAddHighlight\1\0\0\31NeogitDiffContextHighlight\1\0\0\30NeogitHunkHeaderHighlight\abg\1\0\0\vto_css\21NeogitHunkHeader\ahi\nshade\14lightness\rfrom_hex\vget_bg\vNormal\vget_fg\1ÄÄÄˇ\3ÁÃô≥\6≥Êå˛\3ÁÃô≥\6≥ÊÃ˝\3◊\6\1\0\t\0\31\0-6\0\0\0009\0\1\0009\0\2\0009\0\3\0006\1\0\0009\1\1\0019\1\4\0016\2\0\0009\2\1\0029\2\5\0024\3\0\0006\4\6\0'\6\a\0B\4\2\0029\4\b\0045\6\t\0005\a\n\0=\a\v\0065\a\r\0005\b\f\0=\b\14\a5\b\15\0=\b\16\a5\b\17\0=\b\18\a=\a\19\0065\a\20\0=\a\21\0065\a\23\0005\b\22\0=\b\v\a=\a\24\6B\4\2\0013\4\26\0=\4\25\0036\4\27\0009\4\28\0049\4\29\4'\6\30\0+\a\1\0B\4\3\0016\4\0\0=\3\a\0042\0\0ÄK\0\1\0ˇ\2    augroup neogit_config\n      au!\n      au FileType NeogitStatus setl nobl\n      au FileType Neogit* setlocal nolist\n      \" au ColorScheme * call v:lua.Config.neogit.fix_hl()\n      au FileType NeogitCommitView setl nobl\n      au BufEnter,FileType NeogitCommitView set eventignore+=CursorMoved\n      au BufLeave NeogitCommitView set eventignore-=CursorMoved\n    augroup END\n  \14nvim_exec\bapi\bvim\0\vfix_hl\rmappings\1\0\0\1\0\1\6B\16BranchPopup\17integrations\1\0\1\rdiffview\2\nsigns\thunk\1\3\0\0\5\5\titem\1\3\0\0\bÔë†\bÔëº\fsection\1\0\0\1\3\0\0\bÔë†\bÔëº\vstatus\1\0\1\24recent_commit_count\3\n\1\0\3!disable_context_highlighting\1\17disable_hint\2\18disable_signs\1\nsetup\vneogit\frequire\nutils\ahl\nColor\ncolor\vcommon\vConfig\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n¢\5\0\0\5\0\27\00166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1)\0¥\0005\1\b\0005\2\6\0005\3\a\0>\0\3\3>\3\2\2=\2\t\0015\2\n\0005\3\v\0>\0\3\3>\3\2\2=\2\f\0015\2\r\0005\3\14\0\24\4\0\0>\4\3\3>\3\2\2=\2\15\0015\2\16\0005\3\17\0\24\4\0\0>\4\3\3>\3\2\2=\2\18\0015\2\19\0004\3\3\0>\0\1\3>\3\2\2=\2\20\0015\2\21\0004\3\3\0>\0\1\3>\3\2\2=\2\22\0015\2\23\0004\3\3\0>\0\1\3>\3\2\2=\2\24\0016\2\0\0'\4\25\0B\2\2\0029\2\26\2\18\4\1\0B\2\2\1K\0\1\0\17set_mappings\21neoscroll.config\azb\1\2\0\0\azb\azz\1\2\0\0\azz\azt\1\2\0\0\azt\n<C-f>\1\3\0\0#vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-b>\1\3\0\0$-vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-d>\1\3\0\0 math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\n<C-u>\1\0\0\1\3\0\0!-math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\rmappings\1\0\5\22respect_scrolloff\1\rstop_eof\2\16hide_cursor\2\25cursor_scrolls_alone\2\20easing_function\14quadratic\1\b\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\azt\azz\azb\nsetup\14neoscroll\frequire\4\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  nerdcommenter = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
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
  ["nvim-block-paste"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-block-paste",
    url = "https://github.com/Rasukarusan/nvim-block-paste"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\nk\0\3\15\1\5\0\17'\3\0\0006\4\1\0\18\6\2\0B\4\2\4H\a\tÄ6\t\2\0009\t\3\t'\v\4\0\18\f\3\0-\r\0\0008\r\a\r\18\14\b\0B\t\5\2\18\3\t\0F\a\3\3R\aıL\3\2\0\0¿\r%s %s %d\vformat\vstring\npairs\5ç\6\1\0\a\0\18\0\0275\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\f\0005\4\4\0003\5\5\0=\5\6\0045\5\a\0=\5\b\0044\5\3\0005\6\t\0>\6\1\0055\6\n\0>\6\2\5=\5\v\4=\4\r\3B\1\2\0016\1\14\0009\1\15\0019\1\16\1'\3\17\0+\4\1\0B\1\3\0012\0\0ÄK\0\1\0\\    hi! BufferLineDiagnostic gui=bold\n    hi! BufferLineDiagnosticVisible gui=bold\n    \14nvim_exec\bapi\bvim\foptions\1\0\0\foffsets\1\0\3\rfiletype\18DiffviewFiles\ttext\19Source Control\15text_align\vcenter\1\0\3\rfiletype\rNvimTree\ttext\nFiles\15text_align\vcenter\20separator_style\1\3\0\0\b‚ñè\b‚ñï\26diagnostics_indicator\0\1\0\16\tview\fdefault\16diagnostics\rnvim_lsp\rtab_size\3\18\22max_prefix_length\3\15\20max_name_length\3\18\23right_trunc_marker\bÔÇ©\22left_trunc_marker\bÔÇ®\15close_icon\bÔÄç\18modified_icon\b‚óè\22buffer_close_icon\bÔôï\fnumbers\tnone\27always_show_bufferline\2\25enforce_regular_tabs\1\24persist_buffer_sort\2\20show_close_icon\1\28show_buffer_close_icons\2\nsetup\15bufferline\frequire\1\0\4\fwarning\bÔÅ±\thint\bÔÅ™\nerror\bÔÅó\tinfo\bÔÅö\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    after = { "cmp-vsnip" },
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÏ\1\0\2\4\1\5\0\n-\2\0\0009\3\0\0018\2\3\2=\2\0\0015\2\2\0009\3\3\0009\3\4\0038\2\3\2=\2\1\1L\1\2\0\3¿\tname\vsource\1\0\v\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\nemoji\f[Emoji]\fsnippet\14[Snippet]\fluasnip\14[Luasnip]\forgmode\n[Org]\nneorg\f[Neorg]\tcalc\v[Calc]\tpath\v[Path]\rnvim_lua\n[Lua]\nspell\f[Spell]\tmenu\tkindì\1\0\0\t\0\6\0\0214\0\0\0006\1\0\0006\3\1\0009\3\2\0039\3\3\3B\3\1\0A\1\0\4X\4\aÄ6\6\1\0009\6\2\0069\6\4\6\18\b\5\0B\6\2\2+\a\2\0<\a\6\0E\4\3\3R\4˜6\1\1\0009\1\5\1\18\3\0\0D\1\2\0\rtbl_keys\21nvim_win_get_buf\19nvim_list_wins\bapi\bvim\vipairsΩ\b\1\0\f\0.\0L6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0025\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0009\b\f\b)\n¸ˇB\b\2\2=\b\14\a9\b\v\0009\b\f\b)\n\4\0B\b\2\2=\b\15\a9\b\v\0009\b\16\bB\b\1\2=\b\17\a9\b\v\0009\b\18\bB\b\1\2=\b\19\a9\b\v\0009\b\20\b5\n\21\0009\v\22\0009\v\23\v=\v\24\nB\b\2\2=\b\25\a=\a\v\0065\a\26\0005\b\27\0=\b\28\a3\b\29\0=\b\30\a=\a\31\0065\a \0=\a!\0064\a\6\0005\b\"\0>\b\1\a5\b#\0>\b\2\a5\b$\0>\b\3\a5\b%\0>\b\4\a5\b&\0003\t'\0=\t(\b>\b\5\a=\a)\6B\4\2\0019\4*\0\18\6\4\0009\4+\4'\a,\0009\b-\1B\b\1\0A\4\2\0012\0\0ÄK\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\fsources\15get_bufnrs\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nspell\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\18documentation\1\0\1\vborder\vsingle\15formatting\vformat\0\vfields\1\4\0\0\tkind\tabbr\tmenu\1\0\1\15deprecated\2\t<CR>\rbehavior\fReplace\20ConfirmBehavior\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\vModule\n Ôô® \rOperator\n Ôöî \nEvent\n ÔÉß \nColor\n Óà´ \vStruct\n ÔÜ≥ \15EnumMember\n ÔÖù \14Interface\t Ô®†\nValue\n Ô¢ü \nClass\n Ô†ñ \16Constructor\n Óàè \rConstant\n Ôõº \tText\n Ôî´ \18TypeParameter\n<ÔûÉ>\fSnippet\n Ôóè \nField\n Óúñ \tUnit\n Ô•¨ \rVariable\n[Óúñ]\rFunction\n Óûõ \vFolder\n Ô±Æ \vMethod\n Óûõ \tFile\n ÔÖõ \fKeyword\n Ôùß \14Reference\n ÔíÅ \tEnum\n Ô©ó \rProperty\n ÔÇ≠ \15cmp_buffer\"nvim-autopairs.completion.cmp\bcmp\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n≥\2\0\0\4\0\v\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0B\0\3\1K\0\1\0\1\0\t\bRGB\2\tmode\15background\vcss_fn\1\vhsl_fn\1\vrgb_fn\1\nnames\1\bcss\1\rRRGGBBAA\2\vRRGGBB\2\tsass\1\0\5\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\tscss\1\0\5\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\bcss\1\0\5\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\1\3\0\0\6*\t!git\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
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
    config = { "\27LJ\2\nq\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\0\1\0\4\fwarning\bÔÅ±\thint\bÔÅ™\nerror\bÔÅó\tinfo\bÔÅö\nsetup\bpqf\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-pqf.git",
    url = "https://gitlab.com/yorickpeterse/nvim-pqf"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\nß\18\0\0\a\0<\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3#\0005\4\26\0005\5\27\0=\5\28\0045\5\30\0005\6\29\0=\6\31\0055\6 \0=\6!\5=\5\"\4=\4$\0035\4%\0005\5&\0=\5\28\0045\5(\0005\6'\0=\6\31\0055\6)\0=\6!\5=\5\"\4=\4*\3=\3+\0025\3-\0005\4,\0=\4.\0035\0040\0005\5/\0=\5\31\4=\4\"\3=\0031\0025\0034\0005\0042\0005\0053\0=\5\"\4=\0045\0035\0046\0=\0047\3=\0038\2B\0\2\0016\0009\0009\0:\0'\2;\0B\0\2\1K\0\1\0i    augroup SpectreConfig\n    au!\n    au FileType spectre_panel setlocal nolist\n    augroup END\n    \bcmd\bvim\fdefault\freplace\1\0\1\bcmd\bsed\tfind\1\0\0\1\2\0\0\16ignore-case\1\0\1\bcmd\aag\19replace_engine\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\bsed\1\0\0\1\0\1\bcmd\bsed\16find_engine\aag\1\0\3\ticon\b[H]\nvalue\r--hidden\tdesc\16hidden file\1\0\0\1\0\3\ticon\b[I]\nvalue\a-i\tdesc\16ignore case\1\3\0\0\14--vimgrep\a-s\1\0\1\bcmd\aag\arg\1\0\0\foptions\vhidden\1\0\3\ticon\b[H]\nvalue\r--hidden\tdesc\16hidden file\16ignore-case\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\1\bcmd\arg\fmapping\25toggle_ignore_hidden\1\0\3\tdesc\25toggle search hidden\bcmd=<cmd>lua require('spectre').change_options('hidden')<CR>\bmap\ath\23toggle_ignore_case\1\0\3\tdesc\23toggle ignore case\bcmdB<cmd>lua require('spectre').change_options('ignore-case')<CR>\bmap\ati\21change_view_mode\1\0\3\tdesc\28change result view mode\bcmd2<cmd>lua require('spectre').change_view()<CR>\bmap\14<leader>v\16run_replace\1\0\3\tdesc\16replace all\bcmd:<cmd>lua require('spectre.actions').run_replace()<CR>\bmap\14<leader>R\21show_option_menu\1\0\3\tdesc\16show option\bcmd3<cmd>lua require('spectre').show_options()<CR>\bmap\14<leader>o\16replace_cmd\1\0\3\tdesc\30input replace vim command\bcmd:<cmd>lua require('spectre.actions').replace_cmd()<CR>\bmap\14<leader>c\15send_to_qf\1\0\3\tdesc\30send all item to quickfix\bcmd9<cmd>lua require('spectre.actions').send_to_qf()<CR>\bmap\n<c-q>\15enter_file\1\0\3\tdesc\22goto current file\bcmd;<cmd>lua require('spectre.actions').select_entry()<CR>\bmap\t<cr>\16delete_line\1\0\0\1\0\3\tdesc\24toggle current item\bcmd-<cmd>lua require('spectre').delete()<CR>\bmap\add\14highlight\1\0\3\vsearch\20DiffAddAsDelete\freplace\rDiffText\aui\vString\1\0\a\19result_padding\n‚îÇ  \19line_sep_startÉ\1‚îå‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ\23is_open_target_win\2\19is_insert_mode\1\20replace_vim_cmd\tcfdo\19color_devicons\2\rline_sepÉ\1‚îî‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ\nsetup\fspectre\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nâ\1\0\1\r\1\6\0\0166\1\0\0-\3\0\0B\1\2\4H\4\tÄ6\6\1\0009\6\2\0069\6\3\6\18\b\0\0'\t\4\0\18\n\4\0\18\v\5\0005\f\5\0B\6\6\1F\4\3\3R\4ıK\0\1\0\3¿\1\0\3\vsilent\2\fnoremap\2\vnowait\2\6n\24nvim_buf_set_keymap\bapi\bvim\npairs\0\0\4\1\5\1\0176\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\1ÄK\0\1\0006\0\0\0009\0\1\0)\1\1\0=\1\2\0-\0\0\0006\2\0\0009\2\3\0029\2\4\2B\2\1\0A\0\0\1K\0\1\0\4¿\25nvim_get_current_buf\bapi\22custom_setup_done\6b\bvim\2Ä\1\0\0\4\0\6\0\0166\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0B\2\1\2\15\0\2\0X\3\3Ä9\2\4\0B\2\1\1X\2\2Ä9\2\5\1B\2\1\1K\0\1\0\topen\nfocus\rwin_open\18nvim-tree.lib\19nvim-tree.view\frequire÷\1\0\0\6\0\n\0\0256\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2B\2\1\0029\3\6\1B\3\1\2\15\0\3\0X\4\3Ä9\3\a\1B\3\1\1X\3\aÄ9\3\b\0B\3\1\0016\3\3\0009\3\4\0039\3\t\3\18\5\2\0B\3\2\1K\0\1\0\25nvim_set_current_win\topen\nclose\rwin_open\25nvim_get_current_win\bapi\bvim\19nvim-tree.view\18nvim-tree.lib\frequire¨\1\0\0\a\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\2\15\0\1\0X\2\tÄ6\2\3\0009\2\4\0029\2\5\2'\4\6\0009\5\a\1'\6\b\0&\4\6\0045\5\t\0B\2\3\1K\0\1\0\1\0\1\vdetach\2\b' &\18absolute_path\15xdg-open '\rjobstart\afn\bvim\23get_node_at_cursor\18nvim-tree.lib\frequireñ\2\0\1\n\6\b\0001+\1\2\0006\2\0\0009\4\1\0B\2\2\4X\5\19Ä9\a\2\6\15\0\a\0X\b\tÄ9\a\1\6\21\a\a\0)\b\0\0\1\b\a\0X\a\4Ä-\a\0\0009\a\3\a\18\t\6\0B\a\2\1-\a\1\0009\b\4\0068\a\b\a\15\0\a\0X\b\2Ä+\1\1\0X\2\2ÄE\5\3\3R\5Î\15\0\1\0X\2\19Ä-\2\2\0009\2\5\2\4\0\2\0X\2\15Ä-\2\3\0\15\0\2\0X\2\5Ä-\2\4\0009\3\6\0008\2\3\2\15\0\2\0X\3\5Ä-\2\2\0009\2\a\2\18\4\0\0B\2\2\0011\5\2\0+\2\2\0L\2\2\0+\2\1\0L\2\2\0\6¿\3¿\1¿\0\0\4¿\5Ä\15close_node\tname\tTree\18absolute_path\frecurse\topen\fentries\vipairsº\3\1\0\14\2\16\0B6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2B\2\1\0024\3\0\0004\4\0\0006\5\6\0\18\a\2\0B\5\2\4X\b\22Ä6\n\3\0009\n\4\n9\n\a\n\18\f\t\0B\n\2\2\15\0\n\0X\v\15Ä6\n\3\0009\n\4\n9\n\b\n\18\f\t\0'\r\t\0B\n\3\2\15\0\n\0X\v\aÄ6\n\3\0009\n\4\n9\n\n\n\18\f\t\0B\n\2\2+\v\2\0<\v\n\3E\b\3\3R\bË-\5\0\0\15\0\5\0X\6\tÄ6\5\6\0-\a\1\0009\a\v\aB\5\2\4X\b\2Ä+\n\2\0<\n\t\4E\b\3\3R\b¸+\5\1\0004\6\0\0003\a\r\0=\a\f\0069\a\f\0069\t\14\1B\a\2\1\15\0\5\0X\a\3Ä9\a\15\0+\t\1\0B\a\2\0012\0\0ÄK\0\1\0\0¿\0\0\14find_file\tTree\0\frecurse\20cfwob_whitelist\22nvim_buf_get_name\14buflisted\24nvim_buf_get_option\23nvim_buf_is_loaded\vipairs\19nvim_list_bufs\bapi\bvim\18nvim-tree.lib\14nvim-tree\frequire^\1\1\4\1\5\1\r6\1\0\0009\1\1\0019\1\2\1\b\1\0\0X\1\1Ä2\0\6Ä6\1\0\0009\1\3\0013\3\4\0B\1\2\0012\0\0ÄK\0\1\0K\0\1\0\1¿\0\rschedule\20nvim_tree_ready\6g\bvim\2Ç\1\0\0\3\1\6\0\16-\0\0\0009\0\0\0\15\0\0\0X\1\aÄ6\0\1\0009\0\2\0'\2\3\0B\0\2\1-\0\0\0+\1\1\0=\1\0\0006\0\1\0009\0\4\0)\1\1\0=\1\5\0K\0\1\0\1¿\20nvim_tree_ready\6g\20NvimTreeRefresh\bcmd\bvim\19refresh_needed‹\25\1\0\n\0~\2î\0026\0\0\0'\2\1\0B\0\2\0024\1\0\0005\2\3\0=\2\2\0016\2\4\0009\2\5\2)\3\0\0=\3\6\0026\2\4\0009\2\5\2)\3\1\0=\3\a\0026\2\4\0009\2\5\2)\3\0\0=\3\b\0026\2\4\0009\2\5\2)\3\30\0=\3\t\0026\2\4\0009\2\5\2)\3\1\0=\3\n\0026\2\4\0009\2\5\2)\3\1\0=\3\v\0026\2\4\0009\2\5\2)\3\0\0=\3\f\0026\2\4\0009\2\5\2)\3\0\0=\3\r\0026\2\4\0009\2\5\2)\3\0\0=\3\14\0026\2\4\0009\2\5\2)\3\1\0=\3\15\0026\2\4\0009\2\5\2)\3\0\0=\3\16\0026\2\4\0009\2\5\2)\3\1\0=\3\17\0026\2\4\0009\2\5\2)\3\1\0=\3\18\0026\2\4\0009\2\5\0024\3\0\0=\3\19\0026\2\4\0009\2\5\2)\3\1\0=\3\20\0026\2\4\0009\2\5\2'\3\22\0=\3\21\0026\2\4\0009\2\5\2)\3\0\0=\3\23\0026\2\4\0009\2\5\2)\3\0\0=\3\24\0026\2\4\0009\2\5\2)\3\1\0=\3\25\0026\2\4\0009\2\5\0026\3\27\0009\3\28\3'\5\29\0'\6\30\0'\a\31\0'\b \0'\t!\0&\5\t\0056\6\4\0009\6\5\0069\6\t\6\23\6\0\0066\a\4\0009\a\5\a9\a\t\a\23\a\1\aB\3\4\2=\3\26\0026\2\4\0009\2\5\0025\3$\0005\4#\0=\4%\0035\4&\0=\4'\3=\3\"\0026\2\4\0009\2\5\0025\3)\0=\3(\0026\2\4\0009\2\5\0025\3+\0005\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\3=\3*\0026\2\0\0'\0042\0B\2\2\0029\0023\0025\0035\0\18\4\2\0'\0064\0B\4\2\2=\0046\3\18\4\2\0'\0064\0B\4\2\2=\0047\3\18\4\2\0'\0068\0B\4\2\2=\0049\3\18\4\2\0'\0068\0B\4\2\2=\4:\3\18\4\2\0'\6;\0B\4\2\2=\4<\3\18\4\2\0'\6=\0B\4\2\2=\4>\3\18\4\2\0'\6?\0B\4\2\2=\4@\3\18\4\2\0'\6A\0B\4\2\2=\4B\3\18\4\2\0'\6A\0B\4\2\2=\4C\3\18\4\2\0'\6D\0B\4\2\2=\4E\3\18\4\2\0'\6A\0B\4\2\2=\4F\3\18\4\2\0'\0064\0B\4\2\2=\4G\3\18\4\2\0'\6H\0B\4\2\2=\4I\3\18\4\2\0'\6J\0B\4\2\2=\4K\3\18\4\2\0'\6L\0B\4\2\2=\4M\3\18\4\2\0'\6N\0B\4\2\2=\4O\3\18\4\2\0'\6P\0B\4\2\2=\4Q\3\18\4\2\0'\6R\0B\4\2\2=\4S\3\18\4\2\0'\6T\0B\4\2\2=\4U\3\18\4\2\0'\6V\0B\4\2\2=\4W\3\18\4\2\0'\6X\0B\4\2\2=\4Y\3\18\4\2\0'\6Z\0B\4\2\2=\4[\3\18\4\2\0'\6\\\0B\4\2\2=\4]\3\18\4\2\0'\6^\0B\4\2\2=\4_\3\18\4\2\0'\6`\0B\4\2\2=\4a\3\18\4\2\0'\6b\0B\4\2\2=\4c\3\18\4\2\0'\6d\0B\4\2\2=\4e\3\18\4\2\0'\6f\0B\4\2\2=\4g\3\18\4\2\0'\6h\0B\4\2\2=\4i\0033\4j\0003\5l\0=\5k\0013\5n\0=\5m\0013\5p\0=\5o\0013\5r\0=\5q\0013\5t\0=\5s\0019\5u\0003\av\0B\5\2\0016\5\4\0009\5w\0059\5x\5'\ay\0+\b\1\0B\5\3\0016\5\4\0009\5w\0059\5x\5'\az\0+\b\1\0B\5\3\0016\5{\0009\5|\5=\1}\0052\0\0ÄK\0\1\0\14nvim_tree\vConfig\a_G’\2    augroup Config.nvim_tree\n      au!\n      au FileType NvimTree lua Config.nvim_tree.custom_setup()\n      \" au BufEnter * lua Config.nvim_tree.global_bufenter()\n      au BufDelete * lua Config.nvim_tree.close_folders_without_open_buffers(true)\n      au BufWritePost * lua require'nvim-tree.lib'.refresh_tree(true)\n    augroup END\n    ‚\1    hi! link NvimTreeGitNew diffAdded\n    hi! link NvimTreeGitDeleted diffRemoved\n    \" hi! link NvimTreeGitDirty GitDirty\n    hi! link NvimTreeGitStaged diffAdded\n    \" hi! link NvimTreeFolderIcon NvimTreeFolderName\n    \14nvim_exec\bapi\0\23on_nvim_tree_ready\0'close_folders_without_open_buffers\0\rxdg_open\0\20toggle_no_focus\0\nfocus\0\17custom_setup\0\6q\nclose\6-\vdir_up\a]c\18next_git_item\a[c\18prev_git_item\6p\npaste\6y\tcopy\6x\bcut\n<C-r>\16full_rename\6r\vrename\6d\vremove\6a\vcreate\6R\frefresh\6H\20toggle_dotfiles\6I\19toggle_ignored\n<Tab>\fpreview\6J\17last_sibling\6K\18first_sibling\6l\6h\6P\16parent_node\v<S-CR>\t<BS>\15close_node\6s\nsplit\6v\vvsplit\n<C-t>\vtabnew\n<C-]>\19<2-RightMouse>\acd\18<2-LeftMouse>\t<CR>\1\0\1\6o):lua Config.nvim_tree.xdg_open()<CR>\tedit\23nvim_tree_callback\21nvim-tree.config\blsp\1\0\4\fwarning\bÔÅ±\thint\bÔÅ™\nerror\bÔÅó\tinfo\bÔÅö\vfolder\1\0\b\fdefault\bÔêì\fsymlink\bÔíÇ\17arrow_closed\bÔë†\17symlink_open\bÔíÇ\15arrow_open\bÔëº\15empty_open\bÔùï\topen\bÔêì\nempty\bÔùï\bgit\1\0\a\14untracked\bÔëó\vstaged\bÔò¥\fdeleted\bÔëò\runstaged\bÔëô\fignored\b‚óå\frenamed\bÔëö\runmerged\bÔêá\1\0\2\fsymlink\bÔíÅ\fdefault\bÔÉ∂\20nvim_tree_icons\1\0\4\18folder_arrows\3\1\ffolders\3\1\bgit\3\1\nfiles\3\1\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vpacker\aqf\fOutline$nvim_tree_window_picker_exclude\22:s?\\v(.*)?ÔêÅ \\1?\31:s?\\v^¬ß¬ß.*\\/(.*$)?‚Ä¶\\1?&:s?\\v^¬ß¬ß.{-}(\\/.{1,%d}$)?‚Ä¶\\1?\25:s?\\v(.{%d})?¬ß¬ß\\1?\a:~\vformat\vstring#nvim_tree_root_folder_modifier\25nvim_tree_update_cwd\28nvim_tree_hijack_cursor\23nvim_tree_tab_open\tleft\19nvim_tree_side\"nvim_tree_disable_keybindings\28nvim_tree_special_files\21nvim_tree_follow\30nvim_tree_folder_devicons\28nvim_tree_disable_netrw\27nvim_tree_hijack_netrw\27nvim_tree_quit_on_open\25nvim_tree_auto_close\24nvim_tree_auto_open\30nvim_tree_lsp_diagnostics\26nvim_tree_group_empty\20nvim_tree_width\24nvim_tree_gitignore\21nvim_tree_git_hl\29nvim_tree_indent_markers\6g\bvim\1\2\0\0\t.git\20cfwob_whitelist\21nvim-tree.events\frequire\14\18\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n∂\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\26incremental_selection\fkeymaps\1\0\4\21node_incremental\n<TAB>\22scope_incremental\t<CR>\19init_selection\t<CR>\21node_decremental\f<S-TAB>\1\0\1\venable\2\14highlight\fdisable\1\3\0\0\bvim\6c\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\2\n”\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\0\vcolors\1\b\0\0\f#bf616a\f#d08770\f#ebcb8b\f#a3be8c\f#88c0d0\f#5e81ac\f#b48ead\1\0\3\18extended_mode\2\19max_file_lines\3‹\v\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nÄ\3\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\2B\0\2\1K\0\1\0\roverride\1\0\1\fdefault\1\tlisp\1\0\3\ncolor\f#264B8B\ticon\bÔ¨¶\tname\tLisp\ael\1\0\3\ncolor\f#5D439C\ticon\bÔ¨¶\tname\nElisp\atl\1\0\3\ncolor\f#51a0cf\ticon\bÓò†\tname\tTeal\6m\1\0\3\ncolor\f#599eff\ticon\bÓòû\tname\fCModule\acs\1\0\3\ncolor\f#0d5786\ticon\bÔ†ö\tname\aCs\bxml\1\0\0\1\0\3\ncolor\f#e37933\ticon\bÓòé\tname\bXml\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
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
  rnvimr = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/rnvimr",
    url = "https://github.com/kevinhwang91/rnvimr"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/sindrets/rose-pine-neovim"
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
    config = { "\27LJ\2\nΩ\1\0\0\b\1\t\0\23-\0\0\0009\0\0\0B\0\1\0029\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0+\5\2\0B\2\3\0016\2\2\0009\2\5\2'\4\6\0B\2\2\0016\2\2\0009\2\5\2'\4\a\0\18\6\4\0009\4\b\4\18\a\1\0B\4\3\0A\2\0\1K\0\1\0\1¿\vformat\22DiffviewOpen %s^!\15stopinsert\bcmd\19nvim_win_close\bapi\bvim\nvalue\23get_selected_entryõ\f\1\0\n\0?\0k6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4,\0005\5\6\0005\6\5\0=\6\a\0055\6\b\0005\a\t\0=\a\n\0065\a\v\0=\a\f\6=\6\r\0055\6\14\0=\6\15\0056\6\0\0'\b\16\0B\6\2\0029\6\17\6=\6\18\0054\6\0\0=\6\19\0056\6\0\0'\b\16\0B\6\2\0029\6\20\6=\6\21\0054\6\0\0=\6\22\0055\6\23\0=\6\24\0055\6\25\0=\6\26\0056\6\0\0'\b\27\0B\6\2\0029\6\28\0069\6\29\6=\6\30\0056\6\0\0'\b\27\0B\6\2\0029\6\31\0069\6\29\6=\6 \0056\6\0\0'\b\27\0B\6\2\0029\6!\0069\6\29\6=\6\"\0056\6\0\0'\b\27\0B\6\2\0029\6#\6=\6#\0055\6(\0005\a&\0009\b$\0009\t%\0 \b\t\b=\b'\a=\a)\0064\a\0\0=\a*\6=\6+\5=\5-\0045\0053\0005\0062\0005\a1\0005\b/\0003\t.\0=\t0\b=\b)\a=\a+\6=\0064\5=\0055\0045\0057\0005\0066\0=\0068\0055\6:\0005\a9\0=\a;\6=\6<\5=\5=\4B\2\2\0016\2\0\0'\4\3\0B\2\2\0029\2>\2'\0048\0B\2\2\0016\2\0\0'\4\3\0B\2\2\0029\2>\2'\4<\0B\2\2\0012\0\0ÄK\0\1\0\19load_extension\15extensions\16media_files\14filetypes\1\0\1\rfind_cmd\afd\1\b\0\0\bpng\twebp\bjpg\tjpeg\bmp4\twebm\bpdf\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\1\nfuzzy\2\14case_mode\15smart_case\fpickers\16git_commits\1\0\0\1\0\0\1\0\0\f<C-M-d>\1\0\0\0\rdefaults\1\0\0\rmappings\6n\6i\1\0\0\n<c-q>\1\0\0\16open_qflist\19send_to_qflist\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\17path_display\1\2\0\0\rabsolute\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\1\vmirror\1\1\0\3\nwidth\4\0ÄÄ†ˇ\3\19preview_cutoff\3x\20prompt_position\btop\22vimgrep_arguments\1\0\n\rwinblend\3\0\20layout_strategy\15horizontal\21sorting_strategy\14ascending\23selection_strategy\nreset\17initial_mode\vinsert\17entry_prefix\a  \20selection_caret\t‚û§ \18prompt_prefix\n Ôë´ \ruse_less\2\19color_devicons\2\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\28telescope.actions.state\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/telescope.nvim",
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
  ["vim-closetag"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/opt/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
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
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
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
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
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
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/marwan38/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["winshift.nvim"] = {
    config = { "\27LJ\2\n¿\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\23moving_win_options\1\0\4\17cursorcolumn\1\twrap\1\15cursorline\1\16colorcolumn\5\1\0\2\25highlight_moving_win\2\21focused_hl_group\21LspReferenceRead\nsetup\rwinshift\frequire\0" },
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
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\ní\2\0\0\4\0\a\0\v6\0\0\0009\0\1\0009\0\2\0'\2\3\0+\3\1\0B\0\3\0016\0\0\0009\0\4\0'\1\6\0=\1\5\0K\0\1\0\24MkdpOpenInNewWindow\21mkdp_browserfunc\6g©\1          function! MkdpOpenInNewWindow(url)\n            lua require'nvim-config.lib'.mkdp_open_in_new_window(vim.fn.eval(\"a:url\"))\n          endfunction\n          \14nvim_exec\bapi\bvim\0", "setup", "markdown-preview.nvim")
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
-- Setup for: vim-closetag
time([[Setup for vim-closetag]], true)
try_loadstring("\27LJ\2\nâ\1\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\25html,xhtml,phtml,xml\23closetag_filetypes!*.html,*.xhtml,*.phtml,*.xml\23closetag_filenames\6g\bvim\0", "setup", "vim-closetag")
time([[Setup for vim-closetag]], false)
time([[packadd for vim-closetag]], true)
vim.cmd [[packadd vim-closetag]]
time([[packadd for vim-closetag]], false)
-- Setup for: vim-illuminate
time([[Setup for vim-illuminate]], true)
try_loadstring("\27LJ\2\nˆ\1\0\0\2\0\6\0\r6\0\0\0009\0\1\0)\1˙\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1\n\0\0\14dashboard\vpacker\17NeogitStatus\20TelescopePrompt\rNvimTree\fTrouble\18DiffviewFiles\24DiffviewFileHistory\fOutline\27Illuminate_ftblacklist$Illuminate_highlightUnderCursor\21Illuminate_delay\6g\bvim\0", "setup", "vim-illuminate")
time([[Setup for vim-illuminate]], false)
time([[packadd for vim-illuminate]], true)
vim.cmd [[packadd vim-illuminate]]
time([[packadd for vim-illuminate]], false)
-- Setup for: emmet-vim
time([[Setup for emmet-vim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\n<C-Z>\26user_emmet_leader_key\6g\bvim\0", "setup", "emmet-vim")
time([[Setup for emmet-vim]], false)
time([[packadd for emmet-vim]], true)
vim.cmd [[packadd emmet-vim]]
time([[packadd for emmet-vim]], false)
-- Setup for: nerdcommenter
time([[Setup for nerdcommenter]], true)
try_loadstring("\27LJ\2\nW\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0K\0\1\0\tleft\21NERDDefaultAlign\20NERDSpaceDelims\6g\bvim\0", "setup", "nerdcommenter")
time([[Setup for nerdcommenter]], false)
time([[packadd for nerdcommenter]], true)
vim.cmd [[packadd nerdcommenter]]
time([[packadd for nerdcommenter]], false)
-- Setup for: dashboard-nvim
time([[Setup for dashboard-nvim]], true)
try_loadstring("\27LJ\2\nÅ\2\0\1\14\0\f\0+4\1\0\0)\2ˇˇ6\3\0\0\18\5\0\0B\3\2\4X\6\rÄ6\b\2\0009\b\3\b9\b\4\b9\n\5\a:\n\1\nB\b\2\2=\b\1\a6\b\6\0009\b\a\b\18\n\2\0009\v\1\aB\b\3\2\18\2\b\0E\6\3\3R\6Ò6\3\0\0\18\5\0\0B\3\2\4X\6\15Ä9\b\5\a9\t\5\a:\t\1\t6\n\b\0009\n\t\n'\f\n\0009\r\1\a!\r\r\2B\n\3\2&\t\n\t>\t\1\b'\b\v\0\18\t\6\0&\b\t\b<\a\b\1E\6\3\3R\6ÔL\1\2\0\6k\6 \brep\vstring\bmax\tmath\16description\20strdisplaywidth\afn\bvim\16display_len\vipairs«\r\1\0\b\0\31\0P3\0\0\0006\1\1\0009\1\2\1'\2\4\0=\2\3\0016\1\1\0009\1\5\0019\1\6\1)\3\0\0B\1\2\2)\2\25\0\1\1\2\0X\2\5Ä6\2\1\0009\2\2\0024\3\0\0=\3\a\2X\2\4Ä6\2\1\0009\2\2\0025\3\b\0=\3\a\0026\2\1\0009\2\t\0026\4\1\0009\4\5\0049\4\n\4'\6\v\0+\a\2\0B\4\3\2'\5\f\0B\2\3\0026\3\1\0009\3\2\0034\4\3\0:\5\2\2>\5\1\4=\4\r\0034\3\b\0005\4\15\0005\5\14\0=\5\16\4>\4\1\0035\4\18\0005\5\17\0=\5\16\4>\4\2\0035\4\20\0005\5\19\0=\5\16\4>\4\3\0035\4\22\0005\5\21\0=\5\16\4>\4\4\0035\4\24\0005\5\23\0=\5\16\4>\4\5\0035\4\26\0005\5\25\0=\5\16\4>\4\6\0035\4\28\0005\5\27\0=\5\16\4>\4\a\0036\4\1\0009\4\2\4\18\5\0\0\18\a\3\0B\5\2\2=\5\29\0046\4\1\0009\4\5\0049\4\n\4'\6\30\0+\a\1\0B\4\3\1K\0\1\0t    augroup DashboardConfig\n      au!\n      au FileType dashboard nnoremap <buffer> q :q<CR>\n    augroup END\n  \29dashboard_custom_section\1\0\1\fcommand\20Telescope marks\1\2\0\0\22Ôë°  Jump to Mark\1\0\1\fcommand\24Telescope live_grep\1\2\0\0\19ÔûÉ  Find Word\1\0\1\fcommand\16SessionLoad\1\2\0\0\27Ôë§  Load Last Session\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0\29ÔÉÖ  Recently Used Files\1\0\1\fcommand\25Telescope git_status\1\2\0\0\20Ôû°  Git Status\1\0\1\fcommand3lua require\"nvim-config.lib\".workspace_files()\1\2\0\0\19Ôë´  Find File\16description\1\0\1\fcommand\21DashboardNewFile\1\2\0\0\18ÔÖõ  New File\28dashboard_custom_footer\6\n\fversion\14nvim_exec\nsplit\1\a\0\0D  ‚£†‚£æ‚£Ñ‚†Ä‚†Ä‚†Ä‚¢∞‚£Ñ‚†Ä                                  à\1‚†Ä‚£æ‚£ø‚£ø‚£ø‚£Ü‚†Ä‚†Ä‚¢∏‚£ø‚£∑ ‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚¢ø‚°ø‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä‚†Ä ‚†Ä‚†Ä‚†Äà\1 ‚£ø‚£ø‚°ü‚¢ø‚£ø‚£ß‚°Ä‚¢∏‚£ø‚£ø ‚†Ä‚£†‚†¥‚†∂‚†¶‚°Ñ‚†Ä‚¢Ä‚°§‚†∂‚†∂‚£§‚°Ä‚£∂‚£¶‚†Ä‚†Ä‚¢†‚£∂‚°ñ‚£∂‚£∂‚†Ä‚£∂‚£¶‚£∂‚£∂‚£¶‚£†‚£∂‚£∂‚£∂‚°Ñà\1 ‚£ø‚£ø‚°á‚†à‚¢ª‚£ø‚£∑‚£º‚£ø‚£ø ‚¢∏‚£á‚£Ä‚£Ä‚£Ä‚£π‚¢†‚°ü‚†Ä‚†Ä‚†Ä‚†à‚£∑‚†ò‚£ø‚£á‚†Ä‚£æ‚°ø‚†Ä‚£ø‚£ø‚†Ä‚£ø‚£ø‚†Ä‚†Ä‚£ø‚£ø‚†Ä‚†Ä‚£ø‚£øà\1 ‚¢ø‚£ø‚°á‚†Ä‚†Ä‚†π‚£ø‚£ø‚£ø‚°ø ‚¢∏‚°Ñ‚†Ä‚†Ä‚†Ä‚†Ä‚†∏‚£á‚†Ä‚†Ä‚†Ä‚†Ä‚£ø‚†Ä‚†π‚£ø‚£º‚£ø‚†Å‚†Ä‚£ø‚£ø‚†Ä‚£ø‚£ø‚†Ä‚†Ä‚£ø‚£ø‚†Ä‚†Ä‚£ø‚£øà\1 ‚†Ä‚†ô‚†á‚†Ä‚†Ä‚†Ä‚†ò‚†ø‚†ã‚†Ä ‚†Ä‚†õ‚†¶‚†§‚†¥‚†ñ‚†Ä‚†ô‚†¶‚†§‚†§‚†û‚†Å‚†Ä‚†Ä‚†ª‚†ø‚†É‚†Ä‚†Ä‚†ø‚†ø‚†Ä‚†ø‚†ø‚†Ä‚†Ä‚†ø‚†ø‚†Ä‚†Ä‚†ø‚†ø\28dashboard_custom_header\24nvim_win_get_height\bapi\14telescope dashboard_default_executive\6g\bvim\0\0", "setup", "dashboard-nvim")
time([[Setup for dashboard-nvim]], false)
time([[packadd for dashboard-nvim]], true)
vim.cmd [[packadd dashboard-nvim]]
time([[packadd for dashboard-nvim]], false)
-- Setup for: symbols-outline.nvim
time([[Setup for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\nﬁ\3\0\0\4\0\n\0\0156\0\0\0009\0\1\0005\1\3\0005\2\4\0=\2\5\0014\2\0\0=\2\6\1=\1\2\0006\0\0\0009\0\a\0009\0\b\0'\2\t\0+\3\1\0B\0\3\1K\0\1\0≤\1    hi! link FocusedSymbol Visual\n    augroup SymbolsOutlineConfig\n      au!\n      au FileType Outline set nolist winfixwidth winfixheight signcolumn=no\n    augroup END\n    \14nvim_exec\bapi\18lsp_blacklist\fkeymaps\1\0\6\17hover_symbol\14<C-space>\18goto_location\t<Cr>\17code_actions\14<leader>.\18rename_symbol\6r\nclose\6q\19focus_location\6o\1\0\4\rposition\nright\16show_guides\2\27highlight_hovered_item\2\17auto_preview\1\20symbols_outline\6g\bvim\0", "setup", "symbols-outline.nvim")
time([[Setup for symbols-outline.nvim]], false)
time([[packadd for symbols-outline.nvim]], true)
vim.cmd [[packadd symbols-outline.nvim]]
time([[packadd for symbols-outline.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\n™\r\0\0\n\0M\0—\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0004\1\0\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4\5\0005\5\6\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0005\6\v\0=\6\f\5=\5\r\0045\5\14\0004\6\0\0=\6\15\0054\6\0\0=\6\16\5=\5\17\0044\5\0\0=\5\18\0045\5\19\0005\6\21\0\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6=\6\31\0055\6!\0\18\a\0\0'\t \0B\a\2\2=\a\"\6\18\a\0\0'\t \0B\a\2\2=\a#\6\18\a\0\0'\t$\0B\a\2\2=\a%\6\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t'\0B\a\2\2=\a(\6\18\a\0\0'\t)\0B\a\2\2=\a*\6\18\a\0\0'\t)\0B\a\2\2=\a+\6\18\a\0\0'\t\29\0B\a\2\2=\a\30\6\18\a\0\0'\t\29\0B\a\2\2=\a,\6\18\a\0\0'\t-\0B\a\2\2=\a.\6\18\a\0\0'\t/\0B\a\2\2=\a0\6\18\a\0\0'\t1\0B\a\2\2=\a2\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6=\6\r\0055\0064\0\18\a\0\0'\t3\0B\a\2\2=\a5\6\18\a\0\0'\t6\0B\a\2\2=\a7\6\18\a\0\0'\t8\0B\a\2\2=\a9\6\18\a\0\0'\t:\0B\a\2\2=\a;\6\18\a\0\0'\t<\0B\a\2\2=\a=\6\18\a\0\0'\t \0B\a\2\2=\a\"\6\18\a\0\0'\t \0B\a\2\2=\a#\6\18\a\0\0'\t$\0B\a\2\2=\a%\6\18\a\0\0'\t$\0B\a\2\2=\a&\6\18\a\0\0'\t'\0B\a\2\2=\a(\6\18\a\0\0'\t)\0B\a\2\2=\a*\6\18\a\0\0'\t)\0B\a\2\2=\a+\6\18\a\0\0'\t\20\0B\a\2\2=\a\22\6\18\a\0\0'\t\23\0B\a\2\2=\a\24\6\18\a\0\0'\t>\0B\a\2\2=\a?\6\18\a\0\0'\t@\0B\a\2\2=\aA\6\18\a\0\0'\tB\0B\a\2\2=\aC\6\18\a\0\0'\t\25\0B\a\2\2=\a\26\6\18\a\0\0'\t\27\0B\a\2\2=\a\28\6=\6D\0055\6F\0\18\a\0\0'\tE\0B\a\2\2=\a\22\6\18\a\0\0'\tG\0B\a\2\2=\aH\6=\6I\5=\5J\4B\2\2\0016\2K\0009\2L\2=\1\3\2K\0\1\0\vConfig\a_G\17key_bindings\17option_panel\6q\nclose\1\0\0\vselect\23file_history_panel\f<C-w>gf\18goto_file_tab\15<C-w><C-f>\20goto_file_split\agf\14goto_file\azM\20close_all_folds\azR\19open_all_folds\6y\14copy_hash\f<C-A-d>\21open_in_diffview\ag!\1\0\0\foptions\6R\18refresh_files\6U\16unstage_all\6S\14stage_all\6s\18<2-LeftMouse>\6o\17select_entry\t<cr>\16focus_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\tview\6-\23toggle_stage_entry\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\1\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\15file_panel\17tree_options\1\0\2\17flatten_dirs\2\20folder_statuses\16only_folded\1\0\4\rposition\tleft\vheight\3\n\nwidth\3#\18listing_style\ttree\nsigns\1\0\2\16fold_closed\bÔë†\14fold_open\bÔëº\nicons\1\0\2\16folder_open\bÓóæ\18folder_closed\bÓóø\1\0\3\18diff_binaries\1\14use_icons\2\21enhanced_diff_hl\2\nsetup\rdiffview\22diffview_callback\20diffview.config\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\nü\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\4\15max_height\3\f\14max_width\3P\16hint_prefix\t‚óè \16hint_enable\1\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: winshift.nvim
time([[Config for winshift.nvim]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\23moving_win_options\1\0\4\17cursorcolumn\1\twrap\1\15cursorline\1\16colorcolumn\5\1\0\2\25highlight_moving_win\2\21focused_hl_group\21LspReferenceRead\nsetup\rwinshift\frequire\0", "config", "winshift.nvim")
time([[Config for winshift.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n¢\5\0\0\5\0\27\00166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1)\0¥\0005\1\b\0005\2\6\0005\3\a\0>\0\3\3>\3\2\2=\2\t\0015\2\n\0005\3\v\0>\0\3\3>\3\2\2=\2\f\0015\2\r\0005\3\14\0\24\4\0\0>\4\3\3>\3\2\2=\2\15\0015\2\16\0005\3\17\0\24\4\0\0>\4\3\3>\3\2\2=\2\18\0015\2\19\0004\3\3\0>\0\1\3>\3\2\2=\2\20\0015\2\21\0004\3\3\0>\0\1\3>\3\2\2=\2\22\0015\2\23\0004\3\3\0>\0\1\3>\3\2\2=\2\24\0016\2\0\0'\4\25\0B\2\2\0029\2\26\2\18\4\1\0B\2\2\1K\0\1\0\17set_mappings\21neoscroll.config\azb\1\2\0\0\azb\azz\1\2\0\0\azz\azt\1\2\0\0\azt\n<C-f>\1\3\0\0#vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-b>\1\3\0\0$-vim.api.nvim_win_get_height(0)\ttrue\1\2\0\0\vscroll\n<C-d>\1\3\0\0 math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\n<C-u>\1\0\0\1\3\0\0!-math.max(vim.wo.scroll, 16)\ttrue\1\2\0\0\vscroll\rmappings\1\0\5\22respect_scrolloff\1\rstop_eof\2\16hide_cursor\2\25cursor_scrolls_alone\2\20easing_function\14quadratic\1\b\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\azt\azz\azb\nsetup\14neoscroll\frequire\4\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n≥\2\0\0\4\0\v\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0B\0\3\1K\0\1\0\1\0\t\bRGB\2\tmode\15background\vcss_fn\1\vhsl_fn\1\vrgb_fn\1\nnames\1\bcss\1\rRRGGBBAA\2\vRRGGBB\2\tsass\1\0\5\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\tscss\1\0\5\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\bcss\1\0\5\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\nnames\2\bcss\2\1\3\0\0\6*\t!git\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\n•\6\0\0\14\3\26\3Å\1-\0\0\0009\0\0\0'\2\1\0B\0\2\2-\1\0\0009\1\2\1'\3\1\0B\1\2\2-\2\1\0009\2\3\2\18\4\1\0B\2\2\0029\3\4\2*\4\0\0\3\4\3\0X\3\2Ä)\3ˇˇX\4\1Ä)\3\1\0\18\6\2\0009\4\5\2\29\a\1\3B\4\3\2\18\a\2\0009\5\5\2\29\b\2\3B\5\3\2-\6\2\0009\6\6\6'\b\a\0005\t\t\0\18\f\5\0009\n\b\5B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\v\0005\t\f\0\18\f\4\0009\n\b\4B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\r\0005\t\14\0\18\f\5\0009\n\b\5B\n\2\2=\n\n\tB\6\3\1-\6\2\0009\6\6\6'\b\15\0005\t\17\0-\n\0\0009\n\2\n'\f\16\0+\r\1\0B\n\3\2\14\0\n\0X\v\3Ä\18\f\5\0009\n\b\5B\n\2\2=\n\n\t-\n\0\0009\n\0\n'\f\16\0+\r\1\0B\n\3\2\14\0\n\0X\v\aÄ-\n\0\0009\n\0\n'\f\18\0B\n\2\2\14\0\n\0X\v\1Ä\18\n\0\0=\n\19\t-\n\0\0009\n\20\n'\f\16\0+\r\1\0B\n\3\2=\n\21\tB\6\3\1-\6\2\0009\6\6\6'\b\22\0005\t\24\0-\n\0\0009\n\2\n'\f\23\0+\r\1\0B\n\3\2\14\0\n\0X\v\3Ä\18\f\5\0009\n\b\5B\n\2\2=\n\n\t-\n\0\0009\n\0\n'\f\23\0+\r\1\0B\n\3\2\14\0\n\0X\v\aÄ-\n\0\0009\n\0\n'\f\25\0B\n\2\2\14\0\n\0X\v\1Ä\18\n\0\0=\n\19\t-\n\0\0009\n\20\n'\f\23\0+\r\1\0B\n\3\2=\n\21\tB\6\3\1K\0\1\0\1¿\0¿\2¿\16diffRemoved\1\0\0\15DiffDelete\30NeogitDiffDeleteHighlight\bgui\fget_gui\afg\14diffAdded\1\0\0\fDiffAdd\27NeogitDiffAddHighlight\1\0\0\31NeogitDiffContextHighlight\1\0\0\30NeogitHunkHeaderHighlight\abg\1\0\0\vto_css\21NeogitHunkHeader\ahi\nshade\14lightness\rfrom_hex\vget_bg\vNormal\vget_fg\1ÄÄÄˇ\3ÁÃô≥\6≥Êå˛\3ÁÃô≥\6≥ÊÃ˝\3◊\6\1\0\t\0\31\0-6\0\0\0009\0\1\0009\0\2\0009\0\3\0006\1\0\0009\1\1\0019\1\4\0016\2\0\0009\2\1\0029\2\5\0024\3\0\0006\4\6\0'\6\a\0B\4\2\0029\4\b\0045\6\t\0005\a\n\0=\a\v\0065\a\r\0005\b\f\0=\b\14\a5\b\15\0=\b\16\a5\b\17\0=\b\18\a=\a\19\0065\a\20\0=\a\21\0065\a\23\0005\b\22\0=\b\v\a=\a\24\6B\4\2\0013\4\26\0=\4\25\0036\4\27\0009\4\28\0049\4\29\4'\6\30\0+\a\1\0B\4\3\0016\4\0\0=\3\a\0042\0\0ÄK\0\1\0ˇ\2    augroup neogit_config\n      au!\n      au FileType NeogitStatus setl nobl\n      au FileType Neogit* setlocal nolist\n      \" au ColorScheme * call v:lua.Config.neogit.fix_hl()\n      au FileType NeogitCommitView setl nobl\n      au BufEnter,FileType NeogitCommitView set eventignore+=CursorMoved\n      au BufLeave NeogitCommitView set eventignore-=CursorMoved\n    augroup END\n  \14nvim_exec\bapi\bvim\0\vfix_hl\rmappings\1\0\0\1\0\1\6B\16BranchPopup\17integrations\1\0\1\rdiffview\2\nsigns\thunk\1\3\0\0\5\5\titem\1\3\0\0\bÔë†\bÔëº\fsection\1\0\0\1\3\0\0\bÔë†\bÔëº\vstatus\1\0\1\24recent_commit_count\3\n\1\0\3!disable_context_highlighting\1\17disable_hint\2\18disable_signs\1\nsetup\vneogit\frequire\nutils\ahl\nColor\ncolor\vcommon\vConfig\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring("\27LJ\2\nß\18\0\0\a\0<\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3#\0005\4\26\0005\5\27\0=\5\28\0045\5\30\0005\6\29\0=\6\31\0055\6 \0=\6!\5=\5\"\4=\4$\0035\4%\0005\5&\0=\5\28\0045\5(\0005\6'\0=\6\31\0055\6)\0=\6!\5=\5\"\4=\4*\3=\3+\0025\3-\0005\4,\0=\4.\0035\0040\0005\5/\0=\5\31\4=\4\"\3=\0031\0025\0034\0005\0042\0005\0053\0=\5\"\4=\0045\0035\0046\0=\0047\3=\0038\2B\0\2\0016\0009\0009\0:\0'\2;\0B\0\2\1K\0\1\0i    augroup SpectreConfig\n    au!\n    au FileType spectre_panel setlocal nolist\n    augroup END\n    \bcmd\bvim\fdefault\freplace\1\0\1\bcmd\bsed\tfind\1\0\0\1\2\0\0\16ignore-case\1\0\1\bcmd\aag\19replace_engine\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\bsed\1\0\0\1\0\1\bcmd\bsed\16find_engine\aag\1\0\3\ticon\b[H]\nvalue\r--hidden\tdesc\16hidden file\1\0\0\1\0\3\ticon\b[I]\nvalue\a-i\tdesc\16ignore case\1\3\0\0\14--vimgrep\a-s\1\0\1\bcmd\aag\arg\1\0\0\foptions\vhidden\1\0\3\ticon\b[H]\nvalue\r--hidden\tdesc\16hidden file\16ignore-case\1\0\0\1\0\3\ticon\b[I]\nvalue\18--ignore-case\tdesc\16ignore case\targs\1\6\0\0\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\1\0\1\bcmd\arg\fmapping\25toggle_ignore_hidden\1\0\3\tdesc\25toggle search hidden\bcmd=<cmd>lua require('spectre').change_options('hidden')<CR>\bmap\ath\23toggle_ignore_case\1\0\3\tdesc\23toggle ignore case\bcmdB<cmd>lua require('spectre').change_options('ignore-case')<CR>\bmap\ati\21change_view_mode\1\0\3\tdesc\28change result view mode\bcmd2<cmd>lua require('spectre').change_view()<CR>\bmap\14<leader>v\16run_replace\1\0\3\tdesc\16replace all\bcmd:<cmd>lua require('spectre.actions').run_replace()<CR>\bmap\14<leader>R\21show_option_menu\1\0\3\tdesc\16show option\bcmd3<cmd>lua require('spectre').show_options()<CR>\bmap\14<leader>o\16replace_cmd\1\0\3\tdesc\30input replace vim command\bcmd:<cmd>lua require('spectre.actions').replace_cmd()<CR>\bmap\14<leader>c\15send_to_qf\1\0\3\tdesc\30send all item to quickfix\bcmd9<cmd>lua require('spectre.actions').send_to_qf()<CR>\bmap\n<c-q>\15enter_file\1\0\3\tdesc\22goto current file\bcmd;<cmd>lua require('spectre.actions').select_entry()<CR>\bmap\t<cr>\16delete_line\1\0\0\1\0\3\tdesc\24toggle current item\bcmd-<cmd>lua require('spectre').delete()<CR>\bmap\add\14highlight\1\0\3\vsearch\20DiffAddAsDelete\freplace\rDiffText\aui\vString\1\0\a\19result_padding\n‚îÇ  \19line_sep_startÉ\1‚îå‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ\23is_open_target_win\2\19is_insert_mode\1\20replace_vim_cmd\tcfdo\19color_devicons\2\rline_sepÉ\1‚îî‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ‚îÄ\nsetup\fspectre\frequire\0", "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
try_loadstring("\27LJ\2\n”\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\frainbow\1\0\0\vcolors\1\b\0\0\f#bf616a\f#d08770\f#ebcb8b\f#a3be8c\f#88c0d0\f#5e81ac\f#b48ead\1\0\3\18extended_mode\2\19max_file_lines\3‹\v\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n¢\r\0\0\5\0\30\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\2B\0\2\0016\0\26\0009\0\27\0009\0\28\0'\2\29\0+\3\1\0B\0\3\1K\0\1\0É\1    hi def link GitSignsAdd diffAdded\n    hi def link GitSignsChange diffChanged\n    hi def link GitSignsDelete diffRemoved\n  \14nvim_exec\bapi\bvim\14diff_opts\1\0\3\14algorithm\14histogram\21indent_heuristic\2\rinternal\2\16watch_index\1\0\1\rinterval\3Ë\a\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\f\17v <leader>hsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\vbuffer\2\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>hb0<cmd>lua require\"gitsigns\".blame_line()<CR>\fnoremap\2\16n <leader>d2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>hR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\to ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17v <leader>hrT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\tx ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\nsigns\1\0\4\vlinehl\1\nnumhl\1\20update_debounce\3d\18sign_priority\3\6\14topdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ttext\b‚Äæ\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\17changedelete\1\0\4\vlinehl\21GitSignsChangeLn\ttext\b‚ñç\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\vdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ttext\b‚ñç\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\vlinehl\21GitSignsChangeLn\ttext\b‚ñç\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\vlinehl\18GitSignsAddLn\ttext\b‚ñç\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nΩ\1\0\0\b\1\t\0\23-\0\0\0009\0\0\0B\0\1\0029\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0+\5\2\0B\2\3\0016\2\2\0009\2\5\2'\4\6\0B\2\2\0016\2\2\0009\2\5\2'\4\a\0\18\6\4\0009\4\b\4\18\a\1\0B\4\3\0A\2\0\1K\0\1\0\1¿\vformat\22DiffviewOpen %s^!\15stopinsert\bcmd\19nvim_win_close\bapi\bvim\nvalue\23get_selected_entryõ\f\1\0\n\0?\0k6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\2\4\0025\4,\0005\5\6\0005\6\5\0=\6\a\0055\6\b\0005\a\t\0=\a\n\0065\a\v\0=\a\f\6=\6\r\0055\6\14\0=\6\15\0056\6\0\0'\b\16\0B\6\2\0029\6\17\6=\6\18\0054\6\0\0=\6\19\0056\6\0\0'\b\16\0B\6\2\0029\6\20\6=\6\21\0054\6\0\0=\6\22\0055\6\23\0=\6\24\0055\6\25\0=\6\26\0056\6\0\0'\b\27\0B\6\2\0029\6\28\0069\6\29\6=\6\30\0056\6\0\0'\b\27\0B\6\2\0029\6\31\0069\6\29\6=\6 \0056\6\0\0'\b\27\0B\6\2\0029\6!\0069\6\29\6=\6\"\0056\6\0\0'\b\27\0B\6\2\0029\6#\6=\6#\0055\6(\0005\a&\0009\b$\0009\t%\0 \b\t\b=\b'\a=\a)\0064\a\0\0=\a*\6=\6+\5=\5-\0045\0053\0005\0062\0005\a1\0005\b/\0003\t.\0=\t0\b=\b)\a=\a+\6=\0064\5=\0055\0045\0057\0005\0066\0=\0068\0055\6:\0005\a9\0=\a;\6=\6<\5=\5=\4B\2\2\0016\2\0\0'\4\3\0B\2\2\0029\2>\2'\0048\0B\2\2\0016\2\0\0'\4\3\0B\2\2\0029\2>\2'\4<\0B\2\2\0012\0\0ÄK\0\1\0\19load_extension\15extensions\16media_files\14filetypes\1\0\1\rfind_cmd\afd\1\b\0\0\bpng\twebp\bjpg\tjpeg\bmp4\twebm\bpdf\bfzf\1\0\0\1\0\4\25override_file_sorter\2\28override_generic_sorter\1\nfuzzy\2\14case_mode\15smart_case\fpickers\16git_commits\1\0\0\1\0\0\1\0\0\f<C-M-d>\1\0\0\0\rdefaults\1\0\0\rmappings\6n\6i\1\0\0\n<c-q>\1\0\0\16open_qflist\19send_to_qflist\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚îå\b‚îê\b‚îò\b‚îî\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\16file_sorter\19get_fuzzy_file\22telescope.sorters\17path_display\1\2\0\0\rabsolute\18layout_config\rvertical\1\0\1\vmirror\1\15horizontal\1\0\1\vmirror\1\1\0\3\nwidth\4\0ÄÄ†ˇ\3\19preview_cutoff\3x\20prompt_position\btop\22vimgrep_arguments\1\0\n\rwinblend\3\0\20layout_strategy\15horizontal\21sorting_strategy\14ascending\23selection_strategy\nreset\17initial_mode\vinsert\17entry_prefix\a  \20selection_caret\t‚û§ \18prompt_prefix\n Ôë´ \ruse_less\2\19color_devicons\2\1\b\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\14telescope\28telescope.actions.state\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nâ\1\0\1\r\1\6\0\0166\1\0\0-\3\0\0B\1\2\4H\4\tÄ6\6\1\0009\6\2\0069\6\3\6\18\b\0\0'\t\4\0\18\n\4\0\18\v\5\0005\f\5\0B\6\6\1F\4\3\3R\4ıK\0\1\0\3¿\1\0\3\vsilent\2\fnoremap\2\vnowait\2\6n\24nvim_buf_set_keymap\bapi\bvim\npairs\0\0\4\1\5\1\0176\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\1ÄK\0\1\0006\0\0\0009\0\1\0)\1\1\0=\1\2\0-\0\0\0006\2\0\0009\2\3\0029\2\4\2B\2\1\0A\0\0\1K\0\1\0\4¿\25nvim_get_current_buf\bapi\22custom_setup_done\6b\bvim\2Ä\1\0\0\4\0\6\0\0166\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0B\2\1\2\15\0\2\0X\3\3Ä9\2\4\0B\2\1\1X\2\2Ä9\2\5\1B\2\1\1K\0\1\0\topen\nfocus\rwin_open\18nvim-tree.lib\19nvim-tree.view\frequire÷\1\0\0\6\0\n\0\0256\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2B\2\1\0029\3\6\1B\3\1\2\15\0\3\0X\4\3Ä9\3\a\1B\3\1\1X\3\aÄ9\3\b\0B\3\1\0016\3\3\0009\3\4\0039\3\t\3\18\5\2\0B\3\2\1K\0\1\0\25nvim_set_current_win\topen\nclose\rwin_open\25nvim_get_current_win\bapi\bvim\19nvim-tree.view\18nvim-tree.lib\frequire¨\1\0\0\a\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\2\15\0\1\0X\2\tÄ6\2\3\0009\2\4\0029\2\5\2'\4\6\0009\5\a\1'\6\b\0&\4\6\0045\5\t\0B\2\3\1K\0\1\0\1\0\1\vdetach\2\b' &\18absolute_path\15xdg-open '\rjobstart\afn\bvim\23get_node_at_cursor\18nvim-tree.lib\frequireñ\2\0\1\n\6\b\0001+\1\2\0006\2\0\0009\4\1\0B\2\2\4X\5\19Ä9\a\2\6\15\0\a\0X\b\tÄ9\a\1\6\21\a\a\0)\b\0\0\1\b\a\0X\a\4Ä-\a\0\0009\a\3\a\18\t\6\0B\a\2\1-\a\1\0009\b\4\0068\a\b\a\15\0\a\0X\b\2Ä+\1\1\0X\2\2ÄE\5\3\3R\5Î\15\0\1\0X\2\19Ä-\2\2\0009\2\5\2\4\0\2\0X\2\15Ä-\2\3\0\15\0\2\0X\2\5Ä-\2\4\0009\3\6\0008\2\3\2\15\0\2\0X\3\5Ä-\2\2\0009\2\a\2\18\4\0\0B\2\2\0011\5\2\0+\2\2\0L\2\2\0+\2\1\0L\2\2\0\6¿\3¿\1¿\0\0\4¿\5Ä\15close_node\tname\tTree\18absolute_path\frecurse\topen\fentries\vipairsº\3\1\0\14\2\16\0B6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2B\2\1\0024\3\0\0004\4\0\0006\5\6\0\18\a\2\0B\5\2\4X\b\22Ä6\n\3\0009\n\4\n9\n\a\n\18\f\t\0B\n\2\2\15\0\n\0X\v\15Ä6\n\3\0009\n\4\n9\n\b\n\18\f\t\0'\r\t\0B\n\3\2\15\0\n\0X\v\aÄ6\n\3\0009\n\4\n9\n\n\n\18\f\t\0B\n\2\2+\v\2\0<\v\n\3E\b\3\3R\bË-\5\0\0\15\0\5\0X\6\tÄ6\5\6\0-\a\1\0009\a\v\aB\5\2\4X\b\2Ä+\n\2\0<\n\t\4E\b\3\3R\b¸+\5\1\0004\6\0\0003\a\r\0=\a\f\0069\a\f\0069\t\14\1B\a\2\1\15\0\5\0X\a\3Ä9\a\15\0+\t\1\0B\a\2\0012\0\0ÄK\0\1\0\0¿\0\0\14find_file\tTree\0\frecurse\20cfwob_whitelist\22nvim_buf_get_name\14buflisted\24nvim_buf_get_option\23nvim_buf_is_loaded\vipairs\19nvim_list_bufs\bapi\bvim\18nvim-tree.lib\14nvim-tree\frequire^\1\1\4\1\5\1\r6\1\0\0009\1\1\0019\1\2\1\b\1\0\0X\1\1Ä2\0\6Ä6\1\0\0009\1\3\0013\3\4\0B\1\2\0012\0\0ÄK\0\1\0K\0\1\0\1¿\0\rschedule\20nvim_tree_ready\6g\bvim\2Ç\1\0\0\3\1\6\0\16-\0\0\0009\0\0\0\15\0\0\0X\1\aÄ6\0\1\0009\0\2\0'\2\3\0B\0\2\1-\0\0\0+\1\1\0=\1\0\0006\0\1\0009\0\4\0)\1\1\0=\1\5\0K\0\1\0\1¿\20nvim_tree_ready\6g\20NvimTreeRefresh\bcmd\bvim\19refresh_needed‹\25\1\0\n\0~\2î\0026\0\0\0'\2\1\0B\0\2\0024\1\0\0005\2\3\0=\2\2\0016\2\4\0009\2\5\2)\3\0\0=\3\6\0026\2\4\0009\2\5\2)\3\1\0=\3\a\0026\2\4\0009\2\5\2)\3\0\0=\3\b\0026\2\4\0009\2\5\2)\3\30\0=\3\t\0026\2\4\0009\2\5\2)\3\1\0=\3\n\0026\2\4\0009\2\5\2)\3\1\0=\3\v\0026\2\4\0009\2\5\2)\3\0\0=\3\f\0026\2\4\0009\2\5\2)\3\0\0=\3\r\0026\2\4\0009\2\5\2)\3\0\0=\3\14\0026\2\4\0009\2\5\2)\3\1\0=\3\15\0026\2\4\0009\2\5\2)\3\0\0=\3\16\0026\2\4\0009\2\5\2)\3\1\0=\3\17\0026\2\4\0009\2\5\2)\3\1\0=\3\18\0026\2\4\0009\2\5\0024\3\0\0=\3\19\0026\2\4\0009\2\5\2)\3\1\0=\3\20\0026\2\4\0009\2\5\2'\3\22\0=\3\21\0026\2\4\0009\2\5\2)\3\0\0=\3\23\0026\2\4\0009\2\5\2)\3\0\0=\3\24\0026\2\4\0009\2\5\2)\3\1\0=\3\25\0026\2\4\0009\2\5\0026\3\27\0009\3\28\3'\5\29\0'\6\30\0'\a\31\0'\b \0'\t!\0&\5\t\0056\6\4\0009\6\5\0069\6\t\6\23\6\0\0066\a\4\0009\a\5\a9\a\t\a\23\a\1\aB\3\4\2=\3\26\0026\2\4\0009\2\5\0025\3$\0005\4#\0=\4%\0035\4&\0=\4'\3=\3\"\0026\2\4\0009\2\5\0025\3)\0=\3(\0026\2\4\0009\2\5\0025\3+\0005\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\3=\3*\0026\2\0\0'\0042\0B\2\2\0029\0023\0025\0035\0\18\4\2\0'\0064\0B\4\2\2=\0046\3\18\4\2\0'\0064\0B\4\2\2=\0047\3\18\4\2\0'\0068\0B\4\2\2=\0049\3\18\4\2\0'\0068\0B\4\2\2=\4:\3\18\4\2\0'\6;\0B\4\2\2=\4<\3\18\4\2\0'\6=\0B\4\2\2=\4>\3\18\4\2\0'\6?\0B\4\2\2=\4@\3\18\4\2\0'\6A\0B\4\2\2=\4B\3\18\4\2\0'\6A\0B\4\2\2=\4C\3\18\4\2\0'\6D\0B\4\2\2=\4E\3\18\4\2\0'\6A\0B\4\2\2=\4F\3\18\4\2\0'\0064\0B\4\2\2=\4G\3\18\4\2\0'\6H\0B\4\2\2=\4I\3\18\4\2\0'\6J\0B\4\2\2=\4K\3\18\4\2\0'\6L\0B\4\2\2=\4M\3\18\4\2\0'\6N\0B\4\2\2=\4O\3\18\4\2\0'\6P\0B\4\2\2=\4Q\3\18\4\2\0'\6R\0B\4\2\2=\4S\3\18\4\2\0'\6T\0B\4\2\2=\4U\3\18\4\2\0'\6V\0B\4\2\2=\4W\3\18\4\2\0'\6X\0B\4\2\2=\4Y\3\18\4\2\0'\6Z\0B\4\2\2=\4[\3\18\4\2\0'\6\\\0B\4\2\2=\4]\3\18\4\2\0'\6^\0B\4\2\2=\4_\3\18\4\2\0'\6`\0B\4\2\2=\4a\3\18\4\2\0'\6b\0B\4\2\2=\4c\3\18\4\2\0'\6d\0B\4\2\2=\4e\3\18\4\2\0'\6f\0B\4\2\2=\4g\3\18\4\2\0'\6h\0B\4\2\2=\4i\0033\4j\0003\5l\0=\5k\0013\5n\0=\5m\0013\5p\0=\5o\0013\5r\0=\5q\0013\5t\0=\5s\0019\5u\0003\av\0B\5\2\0016\5\4\0009\5w\0059\5x\5'\ay\0+\b\1\0B\5\3\0016\5\4\0009\5w\0059\5x\5'\az\0+\b\1\0B\5\3\0016\5{\0009\5|\5=\1}\0052\0\0ÄK\0\1\0\14nvim_tree\vConfig\a_G’\2    augroup Config.nvim_tree\n      au!\n      au FileType NvimTree lua Config.nvim_tree.custom_setup()\n      \" au BufEnter * lua Config.nvim_tree.global_bufenter()\n      au BufDelete * lua Config.nvim_tree.close_folders_without_open_buffers(true)\n      au BufWritePost * lua require'nvim-tree.lib'.refresh_tree(true)\n    augroup END\n    ‚\1    hi! link NvimTreeGitNew diffAdded\n    hi! link NvimTreeGitDeleted diffRemoved\n    \" hi! link NvimTreeGitDirty GitDirty\n    hi! link NvimTreeGitStaged diffAdded\n    \" hi! link NvimTreeFolderIcon NvimTreeFolderName\n    \14nvim_exec\bapi\0\23on_nvim_tree_ready\0'close_folders_without_open_buffers\0\rxdg_open\0\20toggle_no_focus\0\nfocus\0\17custom_setup\0\6q\nclose\6-\vdir_up\a]c\18next_git_item\a[c\18prev_git_item\6p\npaste\6y\tcopy\6x\bcut\n<C-r>\16full_rename\6r\vrename\6d\vremove\6a\vcreate\6R\frefresh\6H\20toggle_dotfiles\6I\19toggle_ignored\n<Tab>\fpreview\6J\17last_sibling\6K\18first_sibling\6l\6h\6P\16parent_node\v<S-CR>\t<BS>\15close_node\6s\nsplit\6v\vvsplit\n<C-t>\vtabnew\n<C-]>\19<2-RightMouse>\acd\18<2-LeftMouse>\t<CR>\1\0\1\6o):lua Config.nvim_tree.xdg_open()<CR>\tedit\23nvim_tree_callback\21nvim-tree.config\blsp\1\0\4\fwarning\bÔÅ±\thint\bÔÅ™\nerror\bÔÅó\tinfo\bÔÅö\vfolder\1\0\b\fdefault\bÔêì\fsymlink\bÔíÇ\17arrow_closed\bÔë†\17symlink_open\bÔíÇ\15arrow_open\bÔëº\15empty_open\bÔùï\topen\bÔêì\nempty\bÔùï\bgit\1\0\a\14untracked\bÔëó\vstaged\bÔò¥\fdeleted\bÔëò\runstaged\bÔëô\fignored\b‚óå\frenamed\bÔëö\runmerged\bÔêá\1\0\2\fsymlink\bÔíÅ\fdefault\bÔÉ∂\20nvim_tree_icons\1\0\4\18folder_arrows\3\1\ffolders\3\1\bgit\3\1\nfiles\3\1\25nvim_tree_show_icons\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vpacker\aqf\fOutline$nvim_tree_window_picker_exclude\22:s?\\v(.*)?ÔêÅ \\1?\31:s?\\v^¬ß¬ß.*\\/(.*$)?‚Ä¶\\1?&:s?\\v^¬ß¬ß.{-}(\\/.{1,%d}$)?‚Ä¶\\1?\25:s?\\v(.{%d})?¬ß¬ß\\1?\a:~\vformat\vstring#nvim_tree_root_folder_modifier\25nvim_tree_update_cwd\28nvim_tree_hijack_cursor\23nvim_tree_tab_open\tleft\19nvim_tree_side\"nvim_tree_disable_keybindings\28nvim_tree_special_files\21nvim_tree_follow\30nvim_tree_folder_devicons\28nvim_tree_disable_netrw\27nvim_tree_hijack_netrw\27nvim_tree_quit_on_open\25nvim_tree_auto_close\24nvim_tree_auto_open\30nvim_tree_lsp_diagnostics\26nvim_tree_group_empty\20nvim_tree_width\24nvim_tree_gitignore\21nvim_tree_git_hl\29nvim_tree_indent_markers\6g\bvim\1\2\0\0\t.git\20cfwob_whitelist\21nvim-tree.events\frequire\14\18\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n∂\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\26incremental_selection\fkeymaps\1\0\4\21node_incremental\n<TAB>\22scope_incremental\t<CR>\19init_selection\t<CR>\21node_decremental\f<S-TAB>\1\0\1\venable\2\14highlight\fdisable\1\3\0\0\bvim\6c\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nÅ\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\29html_break_line_filetype\1\6\0\0\thtml\bvue\20typescriptreact\vsvelte\20javascriptreact\21disable_filetype\1\0\2\22ignored_next_char\19[%w%%%'%[%\"%.]\30enable_check_bracket_line\2\1\2\0\0\20TelescopePrompt\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\nÉ\4\0\0\3\1'\0^5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\0\1=\1\3\0-\1\0\0009\1\0\1=\1\4\0-\1\0\0009\1\0\1=\1\5\0-\1\0\0009\1\0\1=\1\6\0-\1\0\0009\1\0\1=\1\a\0-\1\0\0009\1\0\1=\1\b\0-\1\0\0009\1\0\1=\1\t\0-\1\0\0009\1\n\1=\1\v\0-\1\0\0009\1\n\1=\1\f\0-\1\0\0009\1\n\1=\1\r\0-\1\0\0009\1\n\1=\1\14\0-\1\0\0009\1\n\1=\1\15\0-\1\0\0009\1\n\1=\1\16\0-\1\0\0009\1\17\1=\1\18\0-\1\0\0009\1\17\1=\1\19\0-\1\0\0009\1\17\1=\1\20\0-\1\0\0009\1\21\1=\1\22\0-\1\0\0009\1\21\1=\1\23\0-\1\0\0009\1\21\1=\1\24\0-\1\0\0009\1\21\1=\1\25\0-\1\0\0009\1\26\1=\1\27\0-\1\0\0009\1\26\1=\1\28\0-\1\0\0009\1\26\1=\1\29\0-\1\0\0009\1\30\1=\1\31\0-\1\0\0009\1\30\1=\1 \0-\1\0\0009\1\30\1=\1!\0-\1\0\0009\1\30\1=\1\"\0-\1\0\0009\1\26\1=\1#\0006\1$\0009\1%\0019\1&\1B\1\1\0028\1\1\0L\1\2\0\5Ä\tmode\afn\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\6c\vorange\aRx\aRv\aRc\6R\bred\aix\aic\6i\ngreen\6\19\6S\6s\6\22\6V\6v\fmagenta\bniV\bniR\bniI\bno\22\bnoV\bnov\ano\6n\1\0\0\tbluex\0\1\a\0\4\0\0146\1\0\0006\3\1\0'\4\2\0\18\5\0\0&\4\5\4B\1\3\3\15\0\1\0X\3\1ÄL\2\2\0006\3\1\0'\5\3\0\18\6\0\0&\5\6\5D\3\2\0\25galaxyline.provider_\26galaxyline.providers.\frequire\npcall8\0\0\3\1\2\0\v'\0\0\0\21\1\0\0-\2\0\0\1\1\2\0X\1\5ÄU\1\4Ä\18\1\0\0'\2\1\0&\0\2\1X\1˜L\0\2\0\0¿\6 \5m\1\1\5\1\b\0\f5\1\6\0005\2\1\0003\3\0\0=\3\2\0025\3\3\0-\4\0\0009\4\4\4>\4\2\3=\3\5\2=\2\a\0012\0\0ÄL\1\2\0\5Ä\18FillerSection\1\0\0\14highlight\abg\1\2\0\0\tNONE\rprovider\1\0\0\0T\0\0\3\1\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2-\1\0\0\0\1\0\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\0¿\23nvim_win_get_width\bapi\bvim\20\1\1\2\0\1\0\0033\1\0\0002\0\0ÄL\1\2\0\0`\0\0\3\1\3\0\b6\0\0\0'\2\1\0B\0\2\2B\0\1\1-\0\0\0009\0\2\0B\0\1\1K\0\1\0\2¿\20load_galaxyline#nvim-config.plugins.galaxyline\frequire)\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\2¿\20load_galaxyline\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä ¥\3\0\0\6\1\a\0\0165\0\0\0006\1\1\0009\1\2\1'\3\3\0-\4\0\0B\4\1\2&\3\4\3B\1\2\0016\1\1\0009\1\4\0019\1\5\1B\1\1\0028\1\1\0'\2\6\0&\1\2\1L\1\2\0\b¿\6 \tmode\afn\27hi GalaxyViMode guifg=\bcmd\bvim\1\0\29\6V\16VISUAL LINE\bniV\vNORMAL\bniR\vNORMAL\bniI\vNORMAL\bno\22\vNORMAL\bnoV\vNORMAL\bnov\vNORMAL\ano\vNORMAL\6n\vNORMAL\aic\15COMPLETION\6R\fREPLACE\aRv\fREPLACE\6c\fCOMMAND\ace\14NORMAL EX\6r\vPROMPT\6!\nSHELL\ar?\fCONFIRM\6s\vSELECT\6t\rTERMINAL\6\22\17VISUAL BLOCK\6i\vINSERT\arm\vPROMPT\6v\vVISUAL\acv\aEX\aRx\fREPLACE\6\19\17SELECT BLOCK\aRc\fREPLACE\aix\15COMPLETION\6S\16SELECT LINE«\2\0\0\b\1\n\3=6\0\0\0006\2\1\0009\2\2\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\21\1\0\0\26\1\0\1\b\1\1\0X\1\nÄ-\1\0\0009\1\5\1\18\3\0\0\21\4\0\0\21\5\0\0\26\5\0\5\28\5\0\5 \4\5\4B\1\3\2\18\0\1\0006\1\0\0006\3\1\0009\3\2\0039\3\6\3'\5\4\0B\3\2\0A\1\0\2\21\2\1\0\26\2\0\2\b\2\1\0X\2\nÄ-\2\0\0009\2\a\2\18\4\1\0\21\5\1\0\21\6\1\0\26\6\0\6\28\6\0\6 \5\6\5B\2\3\2\18\1\2\0\18\2\0\0'\3\b\0\18\4\1\0&\2\4\2\21\3\2\0\26\3\2\3\b\3\1\0X\3\nÄ-\3\0\0009\3\t\3\18\5\2\0\21\6\2\0\21\a\2\0\26\a\2\a\28\a\2\a \6\a\6B\3\3\2\18\2\3\0L\2\2\0\0¿\19str_center_pad\6:\18str_right_pad\bcol\17str_left_pad\6.\tline\afn\bvim\rtostring\4\0\bx\0\0\a\0\t\1\0206\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\2\1'\3\4\0B\1\2\0026\2\5\0009\2\6\2#\4\1\0\24\4\0\4B\2\2\3'\4\a\0\18\5\2\0'\6\b\0&\4\6\4L\4\2\0\a% \6 \tmodf\tmath\6$\6.\tline\afn\bvim»\1;\0\0\4\0\5\0\b'\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0B\1\2\2&\0\1\0L\0\2\0\6$\tline\afn\bvim\n ÓÇ° x\0\0\5\0\6\0\0176\0\0\0009\0\1\0006\2\0\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\2\21\0\0\0)\1\0\0\1\1\0\0X\0\4Ä6\0\0\0009\0\4\0009\0\5\0L\0\2\0K\0\1\0\rfiletype\abo\20buf_get_clients\blsp\rtbl_keys\bvim…\1\0\0\6\0\t\0!5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2Ä+\1\1\0L\1\2\0006\1\1\0009\1\4\0019\1\5\1)\3\0\0B\1\2\2)\2x\0\1\2\1\0X\1\fÄ6\1\1\0009\1\6\0016\3\1\0009\3\a\0039\3\b\3)\5\0\0B\3\2\0A\1\0\2\21\1\1\0)\2\0\0\0\2\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\20buf_get_clients\blsp\rtbl_keys\rwinwidth\afn\rfiletype\abo\bvim\1\0\1\5\2Ö\1\0\0\2\0\a\0\0196\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\aÄ'\0\3\0006\1\0\0009\1\1\0019\1\4\1&\0\1\0L\0\2\0X\0\6Ä'\0\5\0006\1\0\0009\1\1\0019\1\6\1&\0\1\0L\0\2\0K\0\1\0\ftabstop\nTABS \15shiftwidth\fSPACES \14expandtab\abo\bvim·\1\0\0\5\0\f\0&6\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\1\6\1\4\0X\2\2Ä\f\2\1\0X\2\1Ä\18\2\0\0\18\4\2\0009\2\5\2B\2\2\2\18\1\2\0\a\0\6\0X\2\5Ä'\2\a\0\18\3\1\0&\2\3\2L\2\2\0X\2\rÄ\a\0\b\0X\2\5Ä'\2\t\0\18\3\1\0&\2\3\2L\2\2\0X\2\6Ä\a\0\n\0X\2\4Ä'\2\v\0\18\3\1\0&\2\3\2L\2\2\0\18\4\0\0009\2\5\0D\2\2\0\tÔÖπ \bmac\tÔÖ∫ \bdos\tÔÖº \tunix\nupper\5\17fileencoding\15fileformat\abo\bvim\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n Ôêò \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä ˝\29\1\0\19\0•\1\2°\0036\0\0\0009\0\1\0009\0\2\0006\1\0\0009\1\1\0019\1\3\0016\2\4\0'\4\5\0B\2\2\0026\3\4\0'\5\6\0B\3\2\0029\4\a\0025\5\t\0=\5\b\2+\5\0\0009\6\n\0015\b\v\0B\6\2\0029\a\f\0015\t\r\0B\a\2\0029\b\14\1'\n\15\0'\v\16\0B\b\3\2\a\b\17\0X\b\3Ä\18\b\a\0\18\a\6\0\18\6\b\0009\b\18\1'\n\15\0005\v\19\0=\6\20\v=\a\21\vB\b\3\0019\b\18\1'\n\22\0005\v\23\0=\6\20\v=\a\21\vB\b\3\0019\b\24\1'\n\22\0B\b\2\0016\b\25\0009\b\26\b9\b\27\b\a\b\28\0X\b\5Ä5\b\29\0=\6\20\b=\a\21\b\18\5\b\0X\b\4Ä5\b\30\0=\6\20\b=\a\21\b\18\5\b\0003\b\31\0003\t \0003\n!\0003\v\"\0006\f#\0003\r%\0=\r$\f6\f#\0003\r'\0=\r&\f6\f\25\0009\f(\f9\f)\f'\14*\0+\15\1\0B\f\3\0014\f\0\0=\f+\0044\f\0\0=\f,\0044\f\0\0=\f-\0044\f\0\0=\f.\0044\f\0\0=\f/\0044\f\b\0005\r5\0005\0141\0003\0150\0=\0152\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\0146\r>\r\1\f5\r;\0005\0148\0003\0157\0=\0152\0145\15:\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14<\r>\r\2\f5\rB\0005\14=\0009\15>\3=\15?\0144\15\3\0\18\16\t\0'\18@\0B\16\2\0029\16A\16>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14C\r>\r\3\f5\rG\0005\14D\0009\15>\3=\15?\0145\15F\0009\16E\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14H\r>\r\4\f5\rL\0005\14I\0009\15J\3=\15?\0144\15\3\0009\16K\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14M\r>\r\5\f5\rO\0005\14N\0009\15J\3=\15?\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14P\r>\r\6\f5\rR\0005\14Q\0009\15J\3=\15?\0144\15\3\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14S\r>\r\a\f=\f+\0044\f\3\0\18\r\n\0)\15\1\0B\r\2\0?\r\0\0=\f,\0044\f\14\0005\rV\0005\14T\0005\15U\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14W\r>\r\1\f5\r[\0005\14X\0005\15Z\0009\16Y\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14\\\r>\r\2\f5\r`\0005\14]\0005\15_\0009\16^\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14a\r>\r\3\f5\rd\0005\14b\0005\15c\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14e\r>\r\4\f5\rj\0005\14g\0003\15f\0=\0152\0145\15h\0009\16\21\5>\16\2\15=\15i\0144\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14k\r>\r\5\f5\rp\0005\14m\0003\15l\0=\0152\0145\15n\0009\16\21\5>\16\2\15=\15i\0145\15o\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14q\r>\r\6\f5\ru\0005\14s\0003\15r\0=\0152\0145\15t\0009\16\21\5>\16\2\15=\15i\0144\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14v\r>\r\a\f5\r|\0005\14x\0003\15w\0=\0152\0143\15y\0=\15?\0145\15z\0009\16\21\5>\16\2\15=\15i\0145\15{\0009\0169\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14}\r>\r\b\f5\rÇ\0005\14\0003\15~\0=\0152\14\18\15\v\0)\17d\0B\15\2\2=\15?\0145\15Ä\0009\16\21\5>\16\2\15=\15i\0145\15Å\0009\16^\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14É\r>\r\t\f5\rà\0005\14Ö\0003\15Ñ\0=\0152\14\18\15\v\0)\17P\0B\15\2\2=\15?\0145\15Ü\0009\16\21\5>\16\2\15=\15i\0145\15á\0009\16K\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14â\r>\r\n\f5\rê\0005\14ã\0003\15ä\0=\0152\0149\15å\3=\15?\0145\15ç\0009\16\21\5>\16\2\15=\15i\0145\15è\0009\16é\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ë\r>\r\v\f5\rî\0005\14í\0009\15å\3=\15?\0145\15ì\0009\16é\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ï\r>\r\f\f\18\r\n\0)\15\3\0B\r\2\0?\r\1\0=\f-\0044\f\4\0005\rò\0005\14ó\0003\15ñ\0=\0152\0144\15\3\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\0146\r>\r\1\f5\rú\0005\14ô\0005\15ö\0009\16\21\5>\16\2\15=\15i\0145\15õ\0009\0163\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14ù\r>\r\2\f5\r†\0005\14û\0009\15>\3=\15?\0145\15ü\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14°\r>\r\3\f=\f.\0044\f\3\0005\r£\0005\14¢\0004\15\3\0009\16\20\5>\16\1\0159\16\21\5>\16\2\15=\0154\14=\14§\r>\r\1\f=\f/\0042\0\0ÄK\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\14SFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14SFileName\15BufferType\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\17FileTypeName\1\0\0\1\0\0\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\1\4\0\0\0\0\tbold\vviolet\1\2\0\0\tNONE\24check_git_workspace\1\0\1\14separator\6 \0\15FileFormat\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\1\14separator\a  \0\15IndentInfo\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\a  \ticon\tÔÄº \0\14LspClient\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\0\1\0\2\14separator\a  \ticon\tÔÇÖ \0\rNumLines\1\0\0\1\2\0\0\tNONE\1\0\0\0\fPercent\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\1\14separator\6 \0\rLineInfo\1\0\0\24separator_highlight\1\2\0\0\tNONE\1\0\1\14separator\6 \0\19DiagnosticInfo\1\0\0\1\4\0\0\0\0\tbold\1\0\2\ticon\n ÔÅö \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\1\4\0\0\0\0\tbold\tcyan\1\0\2\ticon\n ÔÅ™ \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\4\0\0\0\0\tbold\vyellow\1\0\2\ticon\n ÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\4\0\0\0\0\tbold\1\0\2\ticon\n ÔÅó \rprovider\20DiagnosticError\15DiffRemove\1\0\0\1\0\3\14separator\5\ticon\tÔëò \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\3\14separator\5\ticon\tÔëô \rprovider\17DiffModified\fDiffAdd\1\0\0\ngreen\18hide_in_width\1\0\3\14separator\5\ticon\tÔëó \rprovider\fDiffAdd\rFileName\1\0\0\1\4\0\0\0\0\tbold\fmagenta\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color\rfileinfo\14condition\21buffer_not_empty\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\15RainbowRed\1\0\0\14highlight\tblue\rprovider\1\0\0\0\21short_line_right\20short_line_left\nright\bmid\tleftm    augroup galaxyline_config\n      au!\n      au ColorScheme * lua UpdateGalaxyline()\n    augroup END\n  \14nvim_exec\bapi\0\21ReloadGalaxyline\0\21UpdateGalaxyline\a_G\0\0\0\0\1\0\t\fmagenta\f#c678dd\tblue\f#51afef\vviolet\f#a9a1e1\vorange\f#FF8800\rdarkblue\f#081633\tcyan\f#008080\vyellow\f#ECBE7B\ngreen\f#98be65\bred\f#ec5f67\1\0\t\fmagenta\f#c678dd\tblue\f#4596cd\vviolet\f#958ec7\vorange\f#FF8800\rdarkblue\f#081633\tcyan\f#008080\vyellow\f#ECBE7B\ngreen\f#7f9f54\bred\f#ec5f67\nlight\15background\6o\bvim\fhi_link\1\0\1\bgui\tNONE\17StatusLineNC\abg\afg\1\0\1\bgui\tNONE\ahi\0061\freverse\15StatusLine\16get_hl_attr\1\3\0\0\15StatusLine\vNormal\vget_bg\1\3\0\0\15StatusLine\vNormal\vget_fg\1\r\0\0\rNvimTree\nvista\tdbui\vpacker\18fugitiveblame\15LspTrouble\18DiffviewFiles\29DiffviewFileHistoryPanel\26DiffviewFHOptionPanel\fOutline\14dashboard\17NeogitStatus\20short_line_list\fsection\25galaxyline.condition\15galaxyline\frequire\ahl\nutils\vcommon\vConfig\3ÄÄ¿ô\4\27ÄÄ¿ô\4\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: lsp-trouble.nvim
time([[Config for lsp-trouble.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\4\1\3\0\5-\0\0\0009\0\0\0'\2\1\0'\3\2\0D\0\3\0\1¿\fTrouble\rfiletype\25find_buf_with_option2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\19LspTroubleOpen\bcmd\bvim>\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\31wincmd p | LspTroubleClose\bcmd\bvimœ\5\1\0\b\0\22\0\0316\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\0016\2\0\0'\4\5\0B\2\2\0029\2\6\0025\4\a\0005\5\b\0=\5\t\0045\5\n\0=\5\v\4B\2\2\0019\2\f\0003\4\r\0003\5\14\0003\6\15\0005\a\16\0B\2\5\0027\2\17\0006\2\18\0009\2\19\0029\2\20\2'\4\21\0+\5\1\0B\2\3\0012\0\0ÄK\0\1\0g    augroup LspTroubleConfig\n      au!\n      au FileType Trouble setlocal cc=\n    augroup END\n    \14nvim_exec\bapi\bvim\27LspTroubleCustomToggle\1\0\2\nfocus\2\20remember_height\2\0\0\0\23create_buf_toggler\nsigns\1\0\4\fwarning\bÔî©\thint\bÔ†µ\nerror\bÔôô\16information\bÔëâ\16action_keys\1\0\v\tjump\t<cr>\frefresh\6R\tnext\6j\fpreview\6p\vcancel\n<esc>\nclose\6q\rprevious\6k\15open_folds\azR\16close_folds\azM\19toggle_preview\6P\16toggle_mode\6m\1\0\n\14auto_open\1\tmode\14workspace\14fold_open\bÔëº\15auto_close\1\nicons\2\17indent_lines\2\16fold_closed\bÔë†\17auto_preview\1\29use_lsp_diagnostic_signs\1\vheight\3\n\nsetup\ftrouble\nutils\vcommon\vConfig\20nvim-config.lib\frequire\0", "config", "lsp-trouble.nvim")
time([[Config for lsp-trouble.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\nk\0\3\15\1\5\0\17'\3\0\0006\4\1\0\18\6\2\0B\4\2\4H\a\tÄ6\t\2\0009\t\3\t'\v\4\0\18\f\3\0-\r\0\0008\r\a\r\18\14\b\0B\t\5\2\18\3\t\0F\a\3\3R\aıL\3\2\0\0¿\r%s %s %d\vformat\vstring\npairs\5ç\6\1\0\a\0\18\0\0275\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\f\0005\4\4\0003\5\5\0=\5\6\0045\5\a\0=\5\b\0044\5\3\0005\6\t\0>\6\1\0055\6\n\0>\6\2\5=\5\v\4=\4\r\3B\1\2\0016\1\14\0009\1\15\0019\1\16\1'\3\17\0+\4\1\0B\1\3\0012\0\0ÄK\0\1\0\\    hi! BufferLineDiagnostic gui=bold\n    hi! BufferLineDiagnosticVisible gui=bold\n    \14nvim_exec\bapi\bvim\foptions\1\0\0\foffsets\1\0\3\rfiletype\18DiffviewFiles\ttext\19Source Control\15text_align\vcenter\1\0\3\rfiletype\rNvimTree\ttext\nFiles\15text_align\vcenter\20separator_style\1\3\0\0\b‚ñè\b‚ñï\26diagnostics_indicator\0\1\0\16\tview\fdefault\16diagnostics\rnvim_lsp\rtab_size\3\18\22max_prefix_length\3\15\20max_name_length\3\18\23right_trunc_marker\bÔÇ©\22left_trunc_marker\bÔÇ®\15close_icon\bÔÄç\18modified_icon\b‚óè\22buffer_close_icon\bÔôï\fnumbers\tnone\27always_show_bufferline\2\25enforce_regular_tabs\1\24persist_buffer_sort\2\20show_close_icon\1\28show_buffer_close_icons\2\nsetup\15bufferline\frequire\1\0\4\fwarning\bÔÅ±\thint\bÔÅ™\nerror\bÔÅó\tinfo\bÔÅö\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nÄ\3\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\2B\0\2\1K\0\1\0\roverride\1\0\1\fdefault\1\tlisp\1\0\3\ncolor\f#264B8B\ticon\bÔ¨¶\tname\tLisp\ael\1\0\3\ncolor\f#5D439C\ticon\bÔ¨¶\tname\nElisp\atl\1\0\3\ncolor\f#51a0cf\ticon\bÓò†\tname\tTeal\6m\1\0\3\ncolor\f#599eff\ticon\bÓòû\tname\fCModule\acs\1\0\3\ncolor\f#0d5786\ticon\bÔ†ö\tname\aCs\bxml\1\0\0\1\0\3\ncolor\f#e37933\ticon\bÓòé\tname\bXml\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-pqf.git
time([[Config for nvim-pqf.git]], true)
try_loadstring("\27LJ\2\nq\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\0\1\0\4\fwarning\bÔÅ±\thint\bÔÅ™\nerror\bÔÅó\tinfo\bÔÅö\nsetup\bpqf\frequire\0", "config", "nvim-pqf.git")
time([[Config for nvim-pqf.git]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-cmp ]]

-- Config for: nvim-cmp
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÏ\1\0\2\4\1\5\0\n-\2\0\0009\3\0\0018\2\3\2=\2\0\0015\2\2\0009\3\3\0009\3\4\0038\2\3\2=\2\1\1L\1\2\0\3¿\tname\vsource\1\0\v\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\nemoji\f[Emoji]\fsnippet\14[Snippet]\fluasnip\14[Luasnip]\forgmode\n[Org]\nneorg\f[Neorg]\tcalc\v[Calc]\tpath\v[Path]\rnvim_lua\n[Lua]\nspell\f[Spell]\tmenu\tkindì\1\0\0\t\0\6\0\0214\0\0\0006\1\0\0006\3\1\0009\3\2\0039\3\3\3B\3\1\0A\1\0\4X\4\aÄ6\6\1\0009\6\2\0069\6\4\6\18\b\5\0B\6\2\2+\a\2\0<\a\6\0E\4\3\3R\4˜6\1\1\0009\1\5\1\18\3\0\0D\1\2\0\rtbl_keys\21nvim_win_get_buf\19nvim_list_wins\bapi\bvim\vipairsΩ\b\1\0\f\0.\0L6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0025\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0009\b\f\b)\n¸ˇB\b\2\2=\b\14\a9\b\v\0009\b\f\b)\n\4\0B\b\2\2=\b\15\a9\b\v\0009\b\16\bB\b\1\2=\b\17\a9\b\v\0009\b\18\bB\b\1\2=\b\19\a9\b\v\0009\b\20\b5\n\21\0009\v\22\0009\v\23\v=\v\24\nB\b\2\2=\b\25\a=\a\v\0065\a\26\0005\b\27\0=\b\28\a3\b\29\0=\b\30\a=\a\31\0065\a \0=\a!\0064\a\6\0005\b\"\0>\b\1\a5\b#\0>\b\2\a5\b$\0>\b\3\a5\b%\0>\b\4\a5\b&\0003\t'\0=\t(\b>\b\5\a=\a)\6B\4\2\0019\4*\0\18\6\4\0009\4+\4'\a,\0009\b-\1B\b\1\0A\4\2\0012\0\0ÄK\0\1\0\20on_confirm_done\17confirm_done\aon\nevent\fsources\15get_bufnrs\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nspell\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\18documentation\1\0\1\vborder\vsingle\15formatting\vformat\0\vfields\1\4\0\0\tkind\tabbr\tmenu\1\0\1\15deprecated\2\t<CR>\rbehavior\fReplace\20ConfirmBehavior\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\vModule\n Ôô® \rOperator\n Ôöî \nEvent\n ÔÉß \nColor\n Óà´ \vStruct\n ÔÜ≥ \15EnumMember\n ÔÖù \14Interface\t Ô®†\nValue\n Ô¢ü \nClass\n Ô†ñ \16Constructor\n Óàè \rConstant\n Ôõº \tText\n Ôî´ \18TypeParameter\n<ÔûÉ>\fSnippet\n Ôóè \nField\n Óúñ \tUnit\n Ô•¨ \rVariable\n[Óúñ]\rFunction\n Óûõ \vFolder\n Ô±Æ \vMethod\n Óûõ \tFile\n ÔÖõ \fKeyword\n Ôùß \14Reference\n ÔíÅ \tEnum\n Ô©ó \rProperty\n ÔÇ≠ \15cmp_buffer\"nvim-autopairs.completion.cmp\bcmp\frequire\0", "config", "nvim-cmp")

vim.cmd [[ packadd cmp-vsnip ]]
vim.cmd [[ packadd friendly-snippets ]]
time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
