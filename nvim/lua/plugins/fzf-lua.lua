return {
    {
        "ibhagwan/fzf-lua",
        config = function()
            require("fzf-lua").setup({})
            vim.keymap.set("n", "<Leader><Leader>", "<cmd>lua require('fzf-lua').builtin()<CR>", { silent = true })
            vim.keymap.set("n", "<Leader>f", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
            vim.keymap.set("n", "<Leader>o", "<cmd>lua require('fzf-lua').oldfiles()<CR>", { silent = true })
            vim.keymap.set("n", "<Leader>g", "<cmd>lua require('fzf-lua').live_grep()<CR>", { silent = true })
            vim.keymap.set("n", "gf", "<cmd>lua require('fzf-lua').lsp_definitions()<CR>", { silent = true })
            vim.keymap.set("n", "gr", "<cmd>lua require('fzf-lua').lsp_references()<CR>", { silent = true })
            vim.keymap.set("n", "ca", "<cmd>lua require('fzf-lua').lsp_code_actions()<CR>", { silent = true })
        end
    }
}
