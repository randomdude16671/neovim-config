return {
    cmd = {
        "lua-language-server",
    },
    filetypes = {
        "lua",
    },
    root_markers = {
        ".git",
        ".luacheckrc",
        ".luarc.json",
        ".luarc.jsonc",
        ".stylua.toml",
        "selene.toml",
        "selene.yml",
        "stylua.toml",
    },
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                checkThirdParty = true,
            },
            telemetry = { enable = false },
        },
    },
    single_file_support = true,
    log_level = vim.lsp.protocol.MessageType.Warning,
}
