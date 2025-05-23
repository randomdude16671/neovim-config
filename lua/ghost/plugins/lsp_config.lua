return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufRead", "BufNewFile" },
		name = "treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "lua", "nix", "regex", "vim", "vimdoc", "c", "ninja", "bash", "go", "markdown" },
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = true,
				},
				fold = { enabled = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "gnn",
						node_incremental = "grn",
						scope_incremental = "grc",
						node_decremental = "grm",
					},
				},
				textobjects = {
					enable = true,
					select = {
						enable = true,
						lookahead = true, -- Look ahead for textobjects
						keymaps = {
							["af"] = "@function.outer",
							["if"] = "@function.inner",
							["ac"] = "@class.outer",
							["ic"] = "@class.inner",
							["aa"] = "@parameter.outer",
							["ia"] = "@parameter.inner",
						},
					},
					move = {
						enable = true,
						set_jumps = true,
						goto_next_start = {
							["]f"] = "@function.outer",
							["]c"] = "@class.outer",
						},
						goto_previous_start = {
							["[f"] = "@function.outer",
							["[c"] = "@class.outer",
						},
					},
				},
				auto_install = true,
				sync_install = false,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		name = "neovim-lsp",
		lazy = true,
		event = { "BufRead", "BufNewFile" },
		dependencies = {},
		config = function()
			require("ghost.plugins.config.static_lsp")
		end,
	},
}
