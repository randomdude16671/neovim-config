return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "leoluz/nvim-dap-go",
            "nvim-neotest/nvim-nio",
        },
        -- stylua: ignore
        keys = {
            { "<leader>db",  function() require("dap").toggle_breakpoint() end, desc = "Toggle breakpoint" },
            { "<leader>dc",  function() require("dap").continue() end,          desc = "Continue debugging" },
            { "<leader>dso", function() require("dap").step_over() end,         desc = "Step over" },
            { "<leader>dsi", function() require("dap").step_into() end,         desc = "Step over" },
        },
        config = function()
            local dap, dapui = require("dap"), require("dapui")
            local ghost = require("ghost")
            require("dapui").setup()
            require("dap-go").setup()

            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end

            for name, sign in pairs(ghost.core.icons.dap) do
                sign = type(sign) == "table" and sign or { sign }
                vim.fn.sign_define(
                    "Dap" .. name,
                    { text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
                )
            end
        end,
    },
}
