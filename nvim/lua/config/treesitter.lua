require("nvim-treesitter.configs").setup({
    ensure_installed = { "c", "lua", "vim", "vimdoc", "python", "kotlin", "java", "html" },
    sync_install = true,
    highlight = {
        enable = true, -- false will disable the whole extension
    },
    matchup = {
        enable = true, -- mandatory, false will disable the whole extension
    },
    rainbow = {
        enable = true,
        extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
        -- max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
    },
    indent = {
        enable = true,
        disable = { "python" },
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
