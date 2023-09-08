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
                    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
                    vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w><C-h>]], opts)
                    vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w><C-j>]], opts)
                    vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w><C-k>]], opts)
                    vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w><C-l>]], opts)
                    vim.keymap.set('t', '<C-n>', [[<C-\><C-n>]], opts)
                    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
                end

                -- if you only want these mappings for toggle term use term://*toggleterm#* instead
                vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
                vim.keymap.set('n', '<leader>tt', [[<Cmd>ToggleTerm<CR>]], { silent = true })
            end
        }
    }
}
