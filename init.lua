require("ghost.core")
vim.cmd.so "~/.config/nvim/lua/ghost/core/keymaps.lua" -- yea it wasn't working with just require so...

require("lazy").setup({
	{ import = "ghost.plugins" },
}, require("ghost.plugins.config.lazy"))

