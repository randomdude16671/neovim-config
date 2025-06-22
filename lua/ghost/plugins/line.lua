return {
    "rebelot/heirline.nvim",
    event = { "BufRead", "BufNewFile" },
    config = function()
        vim.o.laststatus = 3

        local conditions = require("heirline.conditions")

        -- mode
        local Mode = {
            provider = "  ",
            hl = function()
                local mode = vim.fn.mode()
                if mode:match("n") then
                    return { fg = "#a6e3a1", bold = true }
                elseif mode:match("[vV]") then -- visual, V-line, ctrl-v
                    return { fg = "#89b4fa", bold = true }
                elseif mode:match("[iaR]") then -- insert, append, replace
                    return { fg = "#f38ba8", bold = true }
                else
                    return { fg = "#fab387", bold = true }
                end
            end,
            update = { "ModeChanged", "BufEnter" },
        }

        -- Git Branch
        local GitBranch = {
            condition = function()
                return vim.fn.isdirectory(".git") == 1
                    or vim.fn.systemlist("git rev-parse --is-inside-work-tree")[1] == "true"
            end,
            provider = function()
                local branch = vim.fn.systemlist("git branch --show-current")[1] or ""
                return " " .. branch .. " | "
            end,
            hl = { fg = "#89b4fa", bold = true },
        }

        -- Filename
        local FileName = {
            provider = function()
                local name = vim.fn.expand("%:t")
                return (name ~= "" and name or "[No Name]") .. " "
            end,
            hl = function()
                return vim.fn.expand("%:t") == "" and { fg = "gray" } or { fg = "#a6e3a1", bold = true }
            end,
        }

        -- Lsp status
        local Lsp = {
            provider = function()
                local ft = vim.bo.filetype or "none"
                local clients = vim.lsp.get_clients({ bufnr = 0 })
                local lsp_names = {}

                for _, client in ipairs(clients) do
                    if client.name ~= "null-ls" and client.name ~= "none-ls" then
                        table.insert(lsp_names, client.name)
                    end
                end
                local lsp_str = #lsp_names > 0 and table.concat(lsp_names, ", ") or "0"
                return string.format("  %s ~ %s ", ft, lsp_str)
            end,
            hl = { fg = "gray" },
        }

        -- DAP Status
        local DapStatus = {
            condition = function()
                return package.loaded["dap"] and require("dap").status() ~= ""
            end,
            provider = function()
                return " " .. require("dap").status() .. "  "
            end,
            hl = { fg = "#f9e2af", bold = true },
        }

        -- Diagnostics
        local Diagnostics = {
            condition = conditions.has_diagnostics,
            update = { "DiagnosticChanged", "BufEnter" },
            init = function(self)
                self.errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
                self.warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
                self.info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
                self.hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
            end,
            {
                condition = function(self)
                    return self.errors > 0
                end,
                provider = function(self)
                    return " " .. self.errors .. "  "
                end,
                hl = { fg = "#f38ba8" },
            },
            {
                condition = function(self)
                    return self.warnings > 0
                end,
                provider = function(self)
                    return " " .. self.warnings .. "  "
                end,
                hl = { fg = "#f9e2af" },
            },
            {
                condition = function(self)
                    return self.info > 0
                end,
                provider = function(self)
                    return " " .. self.info .. "  "
                end,
                hl = { fg = "#89dceb" },
            },
            {
                condition = function(self)
                    return self.hints > 0
                end,
                provider = function(self)
                    return " " .. self.hints .. "  "
                end,
                hl = { fg = "#94e2d5" },
            },
        }

        require("heirline").setup({
            ---@diagnostic disable-next-line: missing-fields
            statusline = {
                Mode,
                GitBranch,
                FileName,
                { provider = "%=" },
                Diagnostics,
                DapStatus,
                { provider = "%=" },
                Lsp,
            },
        })
    end,
}
