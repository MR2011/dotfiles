return {
    "mfussenegger/nvim-dap",
    dependencies = {
        {"rcarriga/nvim-dap-ui", dependencies = "nvim-neotest/nvim-nio"},
        "leoluz/nvim-dap-go",
    },

    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

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

        vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
        vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "Continue" })
        vim.keymap.set("n", "<Leader>ds", dap.step_over, { desc = "Step Over" })
        vim.keymap.set("n", "<Leader>di", dap.step_into, { desc = "Step Into" })
        vim.keymap.set("n", "<Leader>do", dap.step_out, { desc = "Step Out" })
        vim.keymap.set("n", "<Leader>dt", dap.terminate, { desc = "Terminate" })
    end,
}
