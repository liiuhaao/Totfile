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
                        group = 'Label',
                        action = 'Lazy sync',
                        key = 's', },
                    {
                        icon = ' 󰈞 ',
                        desc = 'Find Files',
                        -- group = 'Label',
                        action = 'FzfLua files',
                        key = 'f',
                    },
                    {
                        icon = '',
                        desc = ' Old Files ',
                        group = 'Number',
                        action = 'FzfLua oldfiles',
                        key = 'o',
                    },
                    {
                        icon = '󰩈',
                        desc = ' Quit ',
                        group = 'Label',
                        action = 'quit',
                        key = 'q',
                    },
                },
                project = { action = 'cd ' },
                -- mru = { limit = 9 },
                footer = {},
            },
        }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
