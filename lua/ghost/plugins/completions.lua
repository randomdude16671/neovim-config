return {
	"saghen/blink.cmp",
	profile = true,
	event = "LspAttach",
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
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "regular",
		},
		sources = {
			default = { "lsp", "path", "buffer" },
		},

		completion = {
			menu = { border = "rounded", scrollbar = false },
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
