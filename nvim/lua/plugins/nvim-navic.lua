vim.pack.add({
    "https://github.com/SmiteshP/nvim-navic",
})

require("nvim-navic").setup {
    highlight = true,
    lsp = {
        auto_attach = true,
    },
}
