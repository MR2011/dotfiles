return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
                pickers = {
                    lsp_document_symbols = {
                        symbol_width = 80,
                    },
                }
            })
            require("telescope").load_extension("ui-select")
        end,
        keys = {
            { "<leader><space>", require("telescope.builtin").find_files, desc = "Find Files (Root Dir)" },
            { "<leader>ff", require("telescope.builtin").lsp_document_symbols, desc = "List LSP symbols (Current Doc)" },
            { "<leader>fF", require("telescope.builtin").find_files, desc = "Find Files (CWD)", { root = false } },
            { "<leader>fg", require("telescope.builtin").live_grep, desc = "Search for string  (CWD)", { root = false } },
            { "<leader>fb", require("telescope.builtin").buffers, desc = "Find open buffers" },
            { "<leader>fd", require("telescope.builtin").diagnostics, desc = "List diagnostics in open buffers" },
        }
    },
}

