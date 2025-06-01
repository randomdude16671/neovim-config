vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
    vim.lsp.buf.format({ async = false }) -- format the current buffer according to lsp or none-ls
	end,
})

vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Q", "q", {})
vim.api.nvim_create_user_command("WQa", "wqa", {})
vim.api.nvim_create_user_command("WQA", "wqa", {})
vim.api.nvim_create_user_command("Wqa", "wqa", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("WQ", "wq", {})

vim.api.nvim_create_augroup("highlight_yank", {})
vim.api.nvim_create_autocmd("TextYankPost", {
	group = "highlight_yank",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "nix", "lua" },
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.softtabstop = 2
		vim.bo.expandtab = false
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "netrw",
  -- make it like normal netrw (it does matter) 
	callback = function()
		vim.opt_local.cursorline = true
    vim.opt_local.cursorlineopt = "both"
	end,
})

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = { "Taskfile", "*.mbuild" }, 
  callback = function()
    vim.bo.filetype = "mini-build"
  end, 
}) 
