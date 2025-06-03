return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
        config = function()
            require("harpoon"):setup()
        end,
        lazy = true,
        keys = {
            {
                "<leader>a",
                function()
                    require("harpoon"):list():add()
                end,
            },
            {
                "<C-e>",
                function()
                    require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
                end,
            },
            {
                "<leader>ch",
                function()
                    require("harpoon"):list():clear()
                end,
            },
            {
                "<M-j>",
                function()
                    require("harpoon"):list():select(1)
                end,
            },
            {
                "<M-k>",
                function()
                    require("harpoon"):list():select(2)
                end,
            },
            {
                "<M-l>",
                function()
                    require("harpoon"):list():select(3)
                end,
            },
            {
                "<M-;>",
                function()
                    require("harpoon"):list():select(4)
                end,
            },
        },
    },
}
