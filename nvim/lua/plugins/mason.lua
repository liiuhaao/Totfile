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
local lspconfig = require("lspconfig")
local servers = {
    basedpyright = {
        analysis = {
            typeCheckingMode = "basic",
            autoSearchPaths = true,
            useLibraryCodeForTypes = true,
            diagnosticMode = "openFilesOnly",
            diagnosticSeverityOverrides = {
                reportOptionalIterable = "warning",
                reportAttributeAccessIssue = false,
                reportPossiblyUnboundVariable = false,
                reportOptionalSubscript = false,
                reportArgumentType = false,
            },
            pythonPath = vim.fn.exepath("python"),
        },
    },
}

for server_name, settings in pairs(servers) do
    lspconfig[server_name].setup({
        settings = {
            [server_name] = settings
        },
    })
end

mason_lspconfig.setup({
    -- ensure_installed = vim.tbl_keys(servers),
    automatic_enable = false,
    automatic_installation = true,
});


require("mason-null-ls").setup({
    -- ensure_installed = { "black", "isort", "prettier" },
    automatic_installation = true,
})

require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.black.with({
            extra_args = function(params)
                return { "--line-length", "200" }
            end,
        }),
        require("null-ls").builtins.formatting.isort,
        require("null-ls").builtins.formatting.prettier,
    },
})
