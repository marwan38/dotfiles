-- defaults:
-- ~/.local/share/nvim/site/pack/packer/start/nvim-web-devicons/lua/nvim-web-devicons.lua

return function ()
  require("nvim-web-devicons").setup {
    override = {
      lir_folder_icon = {
        icon = "",
        color = "#7ebae4",
        name = "LirFolderNode",
      },
    },
    default = true
  }
end
