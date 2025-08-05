vim.pack.add({
    {
        src = 'https://github.com/saghen/blink.cmp',
        version = vim.version.range('1.*'),
    },
})

require('blink-cmp').setup({
    keymap = {
        preset = 'default',
        ['<C-s>'] = { function(cmp) cmp.show() end },
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
        ['<Enter>'] = { 'select_and_accept', 'fallback' },
        ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
    },
    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
    },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
        }
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
    completion = {
        ghost_text = { enabled = false },
        documentation = {
            auto_show = true,

            auto_show_delay_ms = 500,
        },
        menu = {
            draw = {
                treesitter = { 'lsp' },
                columns = {
                    { "kind_icon", "label", "label_description", gap = 1 },
                    { "kind" }
                }
            }
        }
    },
    signature = { enabled = true }
})
