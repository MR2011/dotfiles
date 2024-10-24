return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "gopls",
                    "pyright",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({
                capabilities = capabilities

            })
            lspconfig.gopls.setup({
                capabilities = capabilities

            })
            lspconfig.pyright.setup({
                capabilities = capabilities

            })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition,
                { desc = "Goto Definition" })
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
            vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
            vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { desc = "Goto T[y]pe Definition" })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "gl", function()
                local float = vim.diagnostic.config().float

                if float then
                    local config = type(float) == "table" and float or {}
                    config.scope = "line"

                    vim.diagnostic.open_float(config)
                end
            end, { desc = "Show line diagnotics" })
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
            vim.keymap.set("n", "gK", vim.lsp.buf.signature_help,
                { desc = "Signature Help" })
        end

    }
}
