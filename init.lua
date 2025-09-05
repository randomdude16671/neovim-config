require "ghost.core"
vim.cmd.so "~/.config/nvim/lua/ghost/core/keymaps.lua"

require("lazy").setup({
    { import = "ghost.plugins" },
}, require "ghost.core.lazy")
