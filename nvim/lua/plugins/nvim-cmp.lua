return {
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-cmdline" },
            { "hrsh7th/cmp-calc" },
            { "hrsh7th/cmp-emoji" },
            { "hrsh7th/cmp-nvim-lsp-document-symbol" },
            { "kdheepak/cmp-latex-symbols" },
            { "L3MON4D3/LuaSnip" },
            { "saadparwaiz1/cmp_luasnip" },
            {
                "zbirenbaum/copilot-cmp",
                dependencies = {
                    "zbirenbaum/copilot.lua",
                    cmd = "Copilot",
                },
            },
            { "onsails/lspkind.nvim" },
        },

        config = function()
            local luasnip = require("luasnip")
            local cmp = require("cmp")
            local lspkind = require('lspkind')

            require("copilot").setup({
                suggestion = { enabled = false },
                panel = { enabled = false },
            })
            require("copilot_cmp").setup()
            require("luasnip/loaders/from_vscode").lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
                    end,
                },
                mapping = {
                    ['<CR>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            if luasnip.expandable() then
                                luasnip.expand()
                            else
                                cmp.confirm({
                                    select = true,
                                })
                            end
                        else
                            fallback()
                        end
                    end),
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        elseif luasnip.locally_jumpable(1) then
                            luasnip.jump(1)
                        else
                            fallback()
                        end
                    end, { "i", "s" }),

                    ["<S-Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif luasnip.locally_jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                },

                sources = {
                    { name = "copilot" },
                    { name = "nvim_lsp" },
                    { name = "nvim_lua" },
                    { name = "buffer" },
                    { name = "path" },
                    { name = "emoji" },
                    { name = "calc" },
                    { name = "latex_symbols" },
                    { name = "luasnip" },
                    { name = "tmux" },
                    { name = "nvim_lsp_signature_help" },
                },

                formatting = {
                    fields = { "kind", "abbr", "menu" },
                    -- format = lspkind.cmp_format(),
                    format = lspkind.cmp_format({
                        mode = 'symbol',
                        maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
                        ellipsis_char = '...',
                        show_labelDetails = true,
                    })
                },


                experimental = {
                    ghost_text = true,
                },
            })

            cmp.setup.cmdline("/", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = "buffer" },
                },
            })
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' },
                    { name = "nvim_lsp_document_symbol" },
                }, {
                    { name = 'cmdline' },
                    { name = 'buffer' },
                }),
                matching = { disallow_symbol_nonprefix_matching = false }
            })
        end,
    },
}
