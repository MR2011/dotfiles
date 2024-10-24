return {
    'smoka7/hop.nvim',
    version = "*",
    config = function()
        require('hop').setup({})
        local hop = require('hop')
        vim.keymap.set('', 'f', function()
            hop.hint_char1({})
        end, { remap = true })
        vim.keymap.set('', 'F', function()
            hop.hint_char1({ current_line_only = true })
        end, { remap = true })
    end
}
