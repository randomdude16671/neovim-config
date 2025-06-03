return {
    "vyfor/cord.nvim",
    build = ":Cord update",
    event = { "BufRead", "BufNewFile" },
    opts = {},
}
