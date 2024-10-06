return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
        }

        dashboard.section.buttons.val = {
            dashboard.button('r', '  Recent files', ":lua require('telescope.builtin').oldfiles()<CR>"),
            dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
            dashboard.button('f', '  Find file', ":lua require('telescope.builtin').find_files()<CR>"),
            dashboard.button('t', '󱎸  Find text', ":lua require('telescope.builtin').live_grep()<CR>"),
            dashboard.button('c', '  Configuration', ':e $MYVIMRC <CR>'),
            dashboard.button('q', '  Quit', ':qa<CR>'),
        }

        alpha.setup(dashboard.opts)
    end,
}
