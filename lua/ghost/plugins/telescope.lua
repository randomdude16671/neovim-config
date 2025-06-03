return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim", { "nvim-telescope/telescope-fzf-native.nvim", build = "make" } },
        cmd = "Telescope",
        keys = {
            {
                "<leader>pf",
                function()
                    require("telescope.builtin").git_files()
                end,
            },
            {
                "<leader>f",
                function()
                    require("telescope.builtin").find_files()
                end,
            },
            {
                "<leader>g",
                function()
                    require("telescope.builtin").live_grep(
                        require("telescope.themes").get_dropdown({ height = 10, previewer = false })
                    )
                end,
            },
            {
                "<leader>b",
                function()
                    require("telescope.builtin").buffers(
                        require("telescope.themes").get_dropdown({ height = 10, previewer = false })
                    )
                end,
            },
            {
                "<leader>sp",
                function()
                    require("telescope.builtin").current_buffer_fuzzy_find(
                        require("telescope.themes").get_dropdown({ height = 10, previewer = false })
                    )
                end,
            },
            {
                "<C-t>",
                function()
                    require("telescope.builtin").treesitter(
                        require("telescope.themes").get_dropdown({ height = 10, previewer = false })
                    )
                end,
            },
        },
        config = function()
            require("telescope").setup({
                defaults = {
                    prompt_prefix = " $ ",
                },
            })
            require("telescope").load_extension("fzf")
        end,
    },
}
