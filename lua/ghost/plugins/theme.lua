return {
    "catppuccin/nvim",
    event = "VeryLazy",
    name = "catppuccin.nvim",
    config = function()
        require("catppuccin").setup({
            compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
            no_italic = true,
            flavour = "mocha",
            styles = {
                conditionals = { "bold" },
            },
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
                noice = true,
                dap_ui = true,
                dap = true,
                snacks = {
                    enabled = true,
                    indent_scope_color = "blue",
                },
                fidget = true,
                blink_cmp = {
                    style = "bordered",
                },
                treesitter = true,
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "bold" },
                        hints = { "bold" },
                        warnings = { "bold" },
                        information = { "bold" },
                        ok = { "bold" },
                    },
                    inlay_hints = {
                        background = false,
                    },
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
