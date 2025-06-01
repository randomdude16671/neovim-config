return {
	{
		"mfussenegger/nvim-dap",
		event = "LspAttach",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"leoluz/nvim-dap-go",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			require("dap-go").setup()
			dapui.setup()

			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end

			vim.keymap.set("n", "<leader>dc", function()
				dap.continue()
			end, { desc = "Continue" })
			vim.keymap.set("n", "<leader>db", function()
				dap.toggle_breakpoint()
			end, { desc = "Toggle Breakpoint" })
			vim.keymap.set("n", "<leader>di", function()
				dap.step_into()
			end, { desc = "Step Into" })
			vim.keymap.set("n", "<leader>do", function()
				dap.step_over()
			end, { desc = "Step Over" })
			vim.keymap.set("n", "<leader>dO", function()
				dap.step_out()
			end, { desc = "Step Out" })
			vim.keymap.set("n", "<leader>dr", function()
				dap.restart()
			end, { desc = "Restart Debugger" })
			vim.keymap.set("n", "<leader>dq", function()
				dap.terminate()
			end, { desc = "Terminate Debugger" })
			vim.keymap.set("n", "<leader>du", function()
				dapui.toggle()
			end, { desc = "Toggle DAP UI" })
		end,
	},
}
