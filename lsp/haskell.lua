return {
    cmd = {
        "haskell-language-server-wrapper",
        "--lsp",
    },
    root_markers = {
        ".git",
        "cabal.project",
        "*.cabal",
    },
    filetypes = {
        "haskell",
        "lhaskell",
    },
}
