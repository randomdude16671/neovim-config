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
                sections = {
                    { section = "header" },
                    { section = "startup" },
                },
                quickfile = { enabled = true },
                scope = { enabled = true },
                terminal = { enabled = false },
            },
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
