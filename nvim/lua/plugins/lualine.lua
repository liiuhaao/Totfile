return {
    {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'auto',
                    component_separators = { left = '', right = '' },
                    section_separators = { left = '', right = '' },
                    -- component_separators = { left = '', right = '' },
                    -- section_separators = { left = '', right = '' },
                    globalstatus = true,
                },
                sections = {
                    -- lualine_a = { 'mode' },
                    lualine_a = { 'mode' },
                    lualine_b = { 'branch', 'diff', 'diagnostics', 'filename' },
                    -- lualine_c = { 'filename', 'searchcount', 'selectioncount' },
                    lualine_c = { { "navic", color_correction = "dynamic", } },
                    lualine_x = { 'filesize', 'encoding', 'fileformat', 'filetype' },
                    lualine_y = { 'progress' },
                    lualine_z = { 'location' }
                },
                -- tabline = {
                --     -- lualine_a = { 'buffers' },
                --     lualine_b = {},
                --     lualine_c = {},
                --     lualine_x = {},
                --     lualine_y = {},
                --     -- lualine_z = { 'tabs' }
                -- },
                -- winbar = {
                --     lualine_a = {},
                --     lualine_b = { 'filename' },
                --     lualine_c = {
                --         {
                --             "navic",
                --             color_correction = "dynamic",
                --         },
                --     }
                -- },
                -- inactive_winbar = {
                --     lualine_a = {},
                --     lualine_b = {},
                --     lualine_c = { 'filename' },
                --     lualine_x = {},
                --     lualine_y = {},
                --     lualine_z = {}
                -- },
                extensions = {}

            }
        end
    },
}
