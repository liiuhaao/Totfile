vim.pack.add({ "https://github.com/neanias/everforest-nvim" })
require("everforest").setup({
    transparent_background_level = 1,
    italics = true,
})
vim.cmd [[colorscheme everforest]]
