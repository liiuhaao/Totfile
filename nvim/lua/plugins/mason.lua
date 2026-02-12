vim.pack.add({
    "https://github.com/williamboman/mason.nvim",
    "https://github.com/williamboman/mason-lspconfig.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/jay-babu/mason-null-ls.nvim",
    "https://github.com/nvimtools/none-ls.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
})

require("mason").setup()

local mason_lspconfig = require('mason-lspconfig');

mason_lspconfig.setup({
    automatic_enable = true,
    automatic_installation = true,
});
