-- diagnostics in nice little qflist thing
return {
	{
		"folke/trouble.nvim",
		opts = {},
		keys = {
			{
				"<leader>tt",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"<leader>tb",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>ts",
				"<cmd>Trouble symbols toggle focus=false<cr>",
				desc = "Symbols (Trouble)",
			},
			{
				"<leader>tf",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
				desc = "LSP Definitions / references / ... (Trouble)",
			},
		},
	},
	{
		"ivanjermakov/troublesum.nvim",
		event = "LspAttach",
		config = function()
			require("troublesum").setup({
				enabled = true,
				autocmd = true,
				severity_format = {
					" ",
					" ",
					" ",
					" ",
				},
			})
		end,
	},
}
