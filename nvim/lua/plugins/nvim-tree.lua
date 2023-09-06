return {
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1

            require("nvim-tree").setup({
                view = {
                    width = 25,
                },
            })
            vim.keymap.set("n", "<Leader><Tab>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
        end
    },
}
