return {
    "folke/snacks.nvim",
    lazy = false,
    opts = {
        input = {
            enabled = true,
        },
        picker = {
            enabled = true,
            matcher = {
                frecency = true,
            },
            layout = "select",
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
        },
        quickfile = { enabled = true },
        scope = { enabled = true },
        terminal = { enabled = false },
    },
    keys = {
        {
            "<leader>f",
            function()
                Snacks.picker.files()
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
