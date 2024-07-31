return {
    {
        "ibhagwan/fzf-lua",
        config = function()
            require("fzf-lua").setup({})
            map("n", "<Leader><Leader>", require('fzf-lua').builtin)
            map("n", "<Leader>f", require('fzf-lua').files)
            map("n", "<Leader>f", require('fzf-lua').files)
            map("n", "<Leader>o", require('fzf-lua').oldfiles)
            map("n", "<Leader>g", require('fzf-lua').live_grep)
            map("n", "gd", require('fzf-lua').lsp_definitions)
            map("n", "gr", require('fzf-lua').lsp_references)
            map("n", "ca", require('fzf-lua').lsp_code_actions)
        end
    }
}
