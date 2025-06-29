-- I don't know how to disable icons here :sadge:
return {
    "folke/snacks.nvim",
    lazy = false,
    opts = {
        input = {
            enabled = true,
        },
        picker = { enabled = true },
        rename = { enabled = true },
        bigfile = { enabled = true },
        indent = { enabled = true },
        dashboard = {
            enabled = true,
            preset = {
                header = [[
	 /$$    /$$ /$$$$$$
	| $$   | $$|_  $$_/
	| $$   | $$  | $$
	|  $$ / $$/  | $$
	 \  $$ $$/   | $$
	  \  $$$/    | $$
	   \  $/    /$$$$$$
		\_/    |______/]],
            },
            sections = {
                { section = "header" },
                { section = "keys", gap = 1, padding = 1 },
                { section = "startup" },
            },
        },
        quickfile = { enabled = true },
        scope = { enabled = true },
        notifier = { enabled = true },
        terminal = { enabled = true },
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
            "<C-f>",
            function()
                Snacks.picker.buffers()
            end,
        },
    },
}
