require "ghost.core"

require("lazy").setup({
    { import = "ghost.plugins" },
}, require "ghost.core.lazy")
