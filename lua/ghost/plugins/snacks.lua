-- I don't know how to disable icons here :sadge:
return {
    "folke/snacks.nvim",
    lazy = false,
    opts = {
        picker = { enabled = true },
        bigfile = { enabled = true },
        dashboard = {
            enabled = true,
            preset = {
                header = [[
  	 ___      ___ ___
    	|\  \    /  /|\  \
    	\ \  \  /  / | \  \
    	 \ \  \/  / / \ \  \
    	  \ \    / /   \ \  \
    	   \ \__/ /     \ \__\
    		\|__|/       \|__|
	]],
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
    },
    keys = {
        {
            "<leader>Nn",
            desc = "Neovim News",
            function()
                Snacks.win({
                    file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
                    width = 0.6,
                    height = 0.6,
                    wo = {
                        spell = false,
                        wrap = false,
                        signcolumn = "yes",
                        statuscolumn = " ",
                        conceallevel = 3,
                    },
                })
            end,
        },
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
            "<leader><leader>",
            function()
                Snacks.picker.buffers()
            end,
        },
    },
}
