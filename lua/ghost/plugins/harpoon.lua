return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    opts = {
        menu = {
            width = vim.api.nvim_win_get_width(0) - 4,
        },
        settings = {
            save_on_toggle = true,
        },
    },
    keys = function()
        local keys = {
            {
                "<leader>a",
                function()
                    require("harpoon"):list():add()
                end,
            },
            {
                "<C-e>",
                function()
                    local harpoon = require("harpoon")
                    harpoon.ui:toggle_quick_menu(harpoon:list())
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
        }
        return keys
    end,
}
