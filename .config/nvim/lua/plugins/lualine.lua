return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local dracula = require'lualine.themes.dracula'

        require('lualine').setup {
          options = { theme  = dracula },
        }
    end
}
