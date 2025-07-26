return {
    "zk-org/zk-nvim",
    name = "zk",
    ft = "markdown",
    config = function()
        vim.keymap.set("n", "<leader><space>", "<cmd>ZkNotes<cr>")
        require("zk").setup({
            picker = "snacks_picker",
            lsp = {
                config = {
                    "zk",
                    cmd = { "zk", "lsp" },
                    filetypes = "markdown",
                },
                auto_attach = { enabled = true },
            },
            picker_options = {
                snacks_picker = {
                    layout = { preset = "vscode" },
                },
            },
        })
    end,
}
