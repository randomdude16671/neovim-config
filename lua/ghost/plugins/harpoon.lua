return {
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
        config = function()
            require("harpoon").setup()
        end,
        lazy = true,
        keys = function()
            local harpoon = require("harpoon")
            return {
                {
                    "<leader>a",
                    function()
                        harpoon:list():add()
                    end,
                },
                {
                    "<C-e>",
                    function()
                        harpoon.ui:toggle_quick_menu(harpoon:list())
                    end,
                },
                {
                    "<leader>ch",
                    function()
                        harpoon:list():clear()
                    end,
                },
                {
                    "<M-j>",
                    function()
                        harpoon:list():select(1)
                    end,
                },
                {
                    "<M-k>",
                    function()
                        harpoon:list():select(2)
                    end,
                },
                {
                    "<M-l>",
                    function()
                        harpoon:list():select(3)
                    end,
                },
                {
                    "<M-;>",
                    function()
                        harpoon:list():select(4)
                    end,
                },
            }
        end,
    },
}
