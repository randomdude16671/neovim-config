return {
    cmd = {
        "ruff",
        "server",
    },
    filetypes = { "python" },
    root_markers = {
        ".git",
        "main.py",
    },
    settings = {
        python = {
            analysis = {
                autoSeachPaths = true,
                useLibraryCodeForTypes = true,
            },
        },
    },
}
