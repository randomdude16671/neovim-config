return {
    "folke/snacks.nvim",
    lazy = false,
    opts = function()
        return {
            input = {
                enabled = true,
            },
            picker = {
                enabled = true,
                matcher = {
                    frecency = true,
                },
            },
            rename = { enabled = true },
            bigfile = { enabled = true },
            indent = { enabled = true },
            dashboard = {
                enabled = true,
                preset = {
                    keys = {
                        {
                            icon = " ",
                            key = "f",
                            desc = "Search files",
                            action = ":lua Snacks.dashboard.pick('files')",
                        },
                        {
                            icon = " ",
                            key = "s",
                            desc = "Show NixOS logo",
                            action = ":terminal ~/.config/nvim/logo.sh",
                        },
                    },
                },
                sections = {
                    { section = "header" },
                    { icon = " ", title = "keys", section = "keys", indent = 2, padding = 1 },
                    { icon = "  ", section = "startup" },
                },
            },
            quickfile = { enabled = true },
            scope = { enabled = true },
            terminal = { enabled = false },
        }
    end,
    keys = {
        {
            "<leader>f",
            function()
                Snacks.picker.files()
            end,
        },
        {
            "<C-p>",
            function()
                require("ghost.picker").file_browser("")
            end,
        },
        {
            "<leader>g",
            function()
                Snacks.picker.grep()
            end,
        },
        {
            "<leader>ss",
            function()
                Snacks.picker.lsp_workspace_symbols()
            end,
        },
    },
}
