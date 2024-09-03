return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            theme = 'hyper',
            disable_move = true,
            config = {
                week_header = {
                    enable = true,
                },
                shortcut = {
                    {
                        icon = '',
                        desc = ' Sync ',
                        group = 'Blue',
                        action = 'Lazy sync',
                        key = 's',
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
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
