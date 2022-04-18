require("null-ls").setup({
    sources = {
        -- require("null-ls").builtins.formatting.yapf.with({
        --     args = { "--style={ based_on_style: pep8, column_limit: 9999 }" },
        -- }),
        -- require("null-ls").builtins.formatting.isort,
        require("null-ls").builtins.formatting.shfmt,
        -- require("null-ls").builtins.formatting.stylua.with({
        --     args = { "--indent-type=Spaces", "--column-width=9999", "-" },
        -- }),
        require("null-ls").builtins.formatting.prettier.with({
            args = { "--tab-width=4", "--stdin-filepath", "$FILENAME" },
        }),
    },
})
