return {
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            { "p00f/nvim-ts-rainbow" },
            { "windwp/nvim-ts-autotag" },
        },
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "python", "kotlin", "java", "html" },
                sync_install = true,
                highlight = {
                    enable = true, -- false will disable the whole extension
                },
                matchup = {
                    enable = true, -- mandatory, false will disable the whole extension
                },
                indent = {
                    enable = true,
                },
                autotag = {
                    enable = true,
                },
                autopairs = {
                    enable = true,
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<CR>",
                        scope_incremental = "<CR>",
                        node_incremental = "<TAB>",
                        node_decremental = "<S-TAB>",
                    },
                },
            })
        end,
    },
}
