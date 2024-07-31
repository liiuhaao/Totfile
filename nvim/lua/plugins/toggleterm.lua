return {
    {
        {
            'akinsho/toggleterm.nvim',
            version = "*",
            config = function()
                require("toggleterm").setup()

                function _G.set_terminal_keymaps()
                    local opts = { buffer = 0 }
                    -- vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
                    map('t', 'jk', [[<C-\><C-n>]], opts)
                    map('t', '<C-h>', [[<C-\><C-n><C-w><C-h>]], opts)
                    map('t', '<C-j>', [[<C-\><C-n><C-w><C-j>]], opts)
                    map('t', '<C-k>', [[<C-\><C-n><C-w><C-k>]], opts)
                    map('t', '<C-l>', [[<C-\><C-n><C-w><C-l>]], opts)
                    map('t', '<C-n>', [[<C-\><C-n>]], opts)
                    map('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
                end

                -- if you only want these mappings for toggle term use term://*toggleterm#* instead
                vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
                map('n', '<leader>tt', [[<Cmd>ToggleTerm<CR>]], { silent = true })
            end
        }
    }
}
