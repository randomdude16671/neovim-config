return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { require("ghost.core.icons").git.addded },
                changed = { require("ghost.core.icons").git.modified },
                delete = { require("ghost.core.icons").git.removed },
            },
        },
    },
}
