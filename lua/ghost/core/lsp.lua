vim.lsp.enable({
    "gopls",
    "nixd",
    "lua_ls",
    "clangd",
})

vim.diagnostic.config({
    virtual_lines = true,
    update_in_insert = true,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = require("ghost.core.icons").diagnostics.Error,
            [vim.diagnostic.severity.WARN] = require("ghost.core.icons").diagnostics.Warn,
            [vim.diagnostic.severity.HINT] = require("ghost.core.icons").diagnostics.Hint,
            [vim.diagnostic.severity.INFO] = require("ghost.core.icons").diagnostics.Info,
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})
