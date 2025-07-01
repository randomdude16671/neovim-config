return {
    "nvimtools/none-ls.nvim",
    event = "LspAttach",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Formatting:
                null_ls.builtins.formatting.goimports,
                null_ls.builtins.formatting.gofumpt,
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.alejandra, -- Nix formatter
                null_ls.builtins.formatting.clang_format.with({
                    filetypes = { "c", "cpp" },
                }),

                -- Linting:
                null_ls.builtins.diagnostics.golangci_lint,
                null_ls.builtins.diagnostics.shellcheck,
            },
        })
    end,
}
