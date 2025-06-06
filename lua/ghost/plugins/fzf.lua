-- No Icons because I don't like them in my picker.
return {
    "ibhagwan/fzf-lua",
    keys = {
        {
            "<leader>pf",
            function()
                require("fzf-lua").git_files()
            end,
        },
        {
            "<leader>f",
            function()
                require("fzf-lua").files()
            end,
        },
        {
            "<leader>g",
            function()
                require("fzf-lua").live_grep_native({ winopts = { height = 0.3, preview = { hidden = true } } })
            end,
        },
        {
            "<leader>b",
            function()
                require("fzf-lua").buffers({ winopts = { height = 0.3, preview = { hidden = true } } })
            end,
        },
        {
            "<leader>sp",
            function()
                require("fzf-lua").blines({ winopts = { height = 0.3, preview = { hidden = true } } })
            end,
        },
        {
            "<C-t>",
            function()
                require("fzf-lua").treesitter({ winopts = { height = 0.3, preview = { hidden = true } } })
            end,
        },
    },
    opts = {
        fzf_colors = true,
        fzf_opts = {
            ["--no-scrollbar"] = true,
        },
        files = {
            cwd_prompt = false,
            prompt = " ",
        },
    },
}
