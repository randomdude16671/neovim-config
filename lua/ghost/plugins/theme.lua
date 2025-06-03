return {
    "catppuccin/nvim",
    name = "catppuccin.nvim",
    event = "VeryLazy",
    config = function()
        require("catppuccin").setup({
            compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
            flavour = "mocha",
            highlight_overrides = {
                all = function(colors)
                    return {
                        DiagnosticVirtualTextError = { bg = colors.none },
                        DiagnosticVirtualTextWarn = { bg = colors.none },
                        DiagnosticVirtualTextInfo = { bg = colors.none },
                        DiagnosticVirtualTextHint = { bg = colors.none },
                        NormalFloat = { bg = colors.none },
                        FloatBorder = { bg = colors.none },
                        Pmenu = { bg = colors.none },
                    }
                end,
            },
            transparent_background = false,
            integrations = {
                blink_cmp = true,
                treesitter = true,
                snacks = {
                    enable = true,
                    indent_scope_color = "lavender",
                },
                telescope = {
                    enable = true,
                },
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                },
            },
        })
        vim.cmd.colorscheme("catppuccin")
    end,
}
