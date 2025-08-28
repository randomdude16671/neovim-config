return {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        default_file_explorer = true,
        skip_confirm_for_simple_edits = true,
        prompt_save_on_select_new_entry = true,
        view_options = {
            show_hidden = true,
        },
    },
    dependencies = {
        { "nvim-mini/mini.icons", opts = {} },
    },

    keys = {
        {
            "-",
            function()
                require("oil").open()
            end,
            desc = "Open filesystem editor and/or file manager",
        },
        {
            "<leader>-",
            function()
                require("oil").open_float()
            end,
            desc = "Open filesystem editor and/or file manager in float",
        },
    },
}
