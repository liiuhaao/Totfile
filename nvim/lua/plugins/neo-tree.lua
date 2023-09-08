return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                vim.keymap.set("n", "<Leader><Tab>", ":Neotree toggle<CR>"),
            })
        end
    }
}
