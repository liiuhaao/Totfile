require("indent_blankline").setup({
    buftype_exclude = { "terminal" },
    filetype_exclude = { "dashboard" },
    show_end_of_line = true,
    -- space_char_blankline = " ",
    show_current_context = true,
    -- show_current_context_start = true,
})
vim.cmd([[highlight IndentBlanklineContextChar guifg=#928374 gui=nocombine]])
