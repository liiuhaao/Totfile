return {
    "neovim/nvim-lspconfig",
    config = function()
        local util = require "lspconfig".util
        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = '',
                    [vim.diagnostic.severity.WARN] = '',
                    [vim.diagnostic.severity.HINT] = '󰌵',
                    [vim.diagnostic.severity.INFO] = '',
                },
                linehl = {
                    -- [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
                    -- [vim.diagnostic.severity.WARN] = 'WarningMsg',
                },
                numhl = {
                    [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
                    [vim.diagnostic.severity.WARN] = 'WarningMsg',
                },
            },
            update_in_insert = true,
            severity_sort = true,
        })
    end,
}
