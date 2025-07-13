return {
    cmd = {
        "pyright-langserver",
        "--stdio",
    },
    filetypes = { "python" },
    root_markers = {
        ".git",
        "main.py",
        "pyrightconfig.json",
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
