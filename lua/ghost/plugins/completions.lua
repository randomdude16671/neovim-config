return {
    "saghen/blink.cmp",
    profile = true,
    event = "LspAttach",
    build = "nix run .#build-plugin", -- happy because its easy now
    dependencies = {
        "rafamadriz/friendly-snippets",
    },
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
            kind_icons = {
                -- Taken from LazyVim
                Array = " ",
                Boolean = "󰨙 ",
                Class = " ",
                Codeium = "󰘦 ",
                Color = " ",
                Control = " ",
                Collapsed = " ",
                Constant = "󰏿 ",
                Constructor = " ",
                Copilot = " ",
                Enum = " ",
                EnumMember = " ",
                Event = " ",
                Field = " ",
                File = " ",
                Folder = " ",
                Function = "󰊕 ",
                Interface = " ",
                Key = " ",
                Keyword = " ",
                Method = "󰊕 ",
                Module = " ",
                Namespace = "󰦮 ",
                Null = " ",
                Number = "󰎠 ",
                Object = " ",
                Operator = " ",
                Package = " ",
                Property = " ",
                Reference = " ",
                Snippet = "󱄽 ",
                String = " ",
                Struct = "󰆼 ",
                Supermaven = " ",
                TabNine = "󰏚 ",
                Text = " ",
                TypeParameter = " ",
                Unit = " ",
                Value = " ",
                Variable = "󰀫 ",
            },
        },
        sources = {
            default = { "lsp", "path", "buffer", "snippets", "lazydev" },
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
    },
    opts_extend = { "sources.default" },
}
