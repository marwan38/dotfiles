return {
    plugins = function(use)
        use {
            "ahmedkhalf/project.nvim",
            config = function()
                require("project_nvim").setup {}
                require("telescope").load_extension "projects"
            end,
        }
    end,

    bindings = function(_, wk)
        wk.register({
            ["<leader>sp"] = {
                "<cmd>Telescope projects<cr>",
                "Projects",
            },
        }, {
            mode = "n",
        })
    end,
}
