return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            sync_installed = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
