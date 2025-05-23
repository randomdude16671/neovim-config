local signs = {
	[vim.diagnostic.severity.ERROR] = " ",
	[vim.diagnostic.severity.WARN] = " ",
	[vim.diagnostic.severity.HINT] = "󰌶 ",
	[vim.diagnostic.severity.INFO] = " ",
}

vim.diagnostic.config({
	signs = {
		text = signs,
	},
})
