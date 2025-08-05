-- dashboard
vim.pack.add({
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/nvimdev/dashboard-nvim",
})
require('dashboard').setup {
    theme = 'hyper',
    disable_move = true,
    config = {
        week_header = {
            enable = true,
        },
        shortcut = {
            {
                icon = ' 󰚰 ',
                desc = ' Update ',
                group = 'Blue',
                action = 'lua vim.pack.update()',
                key = 'u',
            },
            {
                icon = ' 󰈞 ',
                desc = 'Find Files',
                group = 'Yellow',
                action = 'FzfLua files',
                key = 'f',
            },
            {
                icon = '',
                desc = ' Old Files ',
                group = 'Red',
                action = 'FzfLua oldfiles',
                key = 'o',
            },
            {
                icon = '󰩈',
                desc = ' Quit ',
                group = 'Green',
                action = 'quit',
                key = 'q',
            },
        },
        project = { enable = false, action = 'cd ' },
        mru = { limit = 20 },
        footer = {},
    },
}
