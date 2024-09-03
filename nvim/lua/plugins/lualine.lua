return {
    {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'auto',
                    -- component_separators = { left = '', right = '' },
                    -- section_separators = { left = '', right = '' },
                    -- section_separators = { left = '', right = '' },
                    -- component_separators = { left = '', right = '' },
                    component_separators = { left = '', right = '' },
                    section_separators = { left = '', right = '' },
                    globalstatus = true, },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = {
                        "branch",
                    },
                    lualine_c = {
                        {
                            "diff",
                            symbols = { added = ' ', modified = ' ', removed = ' ' },
                            separator = "|"
                        },
                        {
                            "diagnostics",
                            symbols = { error = ' ', warn = ' ', info = ' ', hint = '󰌵 ' },
                            separator = "|"
                        },
                    },
                    lualine_x = {
                        { "selectioncount", separator = "|" },
                        { "searchcount",    separator = "|" },
                        -- { '%=' },
                        { "filesize",      separator = "|" },
                        { "encoding",       separator = "|" },
                        { "fileformat",      separator = "|" },
                        { "filetype",       separator = "|" },
                        { "location",       separator = "|", padding = { left = 0, right = 1 } },
                    },
                    lualine_y = {
                        { "progress" },
                    },

                    lualine_z = {
                        function()
                            local cwd = vim.fn.getcwd()
                            local dirname = vim.fn.fnamemodify(cwd, ':t')
                            return " " .. dirname
                        end,
                        -- function()
                        --     return " " .. os.date("%R")
                        -- end,
                    },
                },
                tabline = {
                    lualine_a = { { 'buffers', mode = 2 } },
                    lualine_b = {},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = { 'tabs' }
                },
                winbar = {
                    lualine_a = {},
                    lualine_b = {
                        { 'filetype', icon_only = true,            padding = { left = 1, right = 0 } },
                        { 'filename', separator = ">",             padding = { left = 0, right = 1 } },
                        { "navic",    color_correction = "dynamic" }
                    }
                },
                inactive_winbar = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {
                        { 'filetype', icon_only = true, padding = { left = 1, right = 0 } },
                        { 'filename', separator = ">",  padding = { left = 0, right = 1 } },
                    },
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {}
                },
            }
        end
    },
}
