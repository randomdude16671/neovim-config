return {
    "saghen/blink.cmp",
    profile = true,
    event = "LspAttach",
    build = "nix run .#build-plugin", -- happy because its easy now
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = "default",
            ["<Tab>"] = {
                function(cmp)
                    return cmp.select_and_accept()
                end,
                "fallback",
            },
        },
        appearance = {
            nerd_font_variant = "normal",
            kind_icons = require("ghost.core.icons").kinds,
        },
        sources = {
            default = { "lsp", "path", "buffer", "lazydev" },
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    score_offset = 100, -- Show before LSP because it's better
                },
            },
        },
        completion = {
            menu = { border = "rounded", scrollbar = false },
            ghost_text = {
                enabled = true,
            },
            documentation = {
                window = { border = "rounded", scrollbar = true },
                auto_show = true,
                auto_show_delay_ms = 500,
            },
        },
        signature = {
            enabled = true,
            trigger = { enabled = true },
            window = {
                scrollbar = false,
                border = "rounded",
                show_documentation = true,
            },
        },
        fuzzy = {
            implementation = "rust",
        },
    },
    opts_extend = { "sources.default" },
}
