return {
    "neovim/nvim-lspconfig",
    config = function()
        local vim = vim
        local signs = { Error = "", Warn = "", Hint = " ", Info = "" }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end

        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "none" })
        vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help,
            { border = "none" })

        vim.lsp.protocol.CompletionItemKind = {
            Copilot = " Copilot",
            Text = "󰦨 Text",
            Method = " Method",
            Function = "󰊕 Function",
            Constructor = " Constructor",
            Field = " Field",
            Variable = "󰫧 Variable",
            Class = " Class",
            Interface = " Interface",
            Module = "󰕳 Module",
            Property = " Property",
            Unit = " Unit",
            Value = " Value",
            Enum = " Enum",
            Keyword = " Keyword",
            Snippet = " Snippet",
            Color = " Color",
            File = " File",
            Reference = " Reference",
            Folder = " Folder",
            EnumMember = " EnumMember",
            Constant = " Constant",
            Struct = " Struct",
            Event = " Event",
            Operator = " Operator",
            TypeParameter = " TypeParameter",
        }
        vim.lsp.protocol.CompletionItemKindName = {
            Copilot = "Copilot",
            Text = "Text",
            Method = "Method",
            Function = "Function",
            Constructor = "Constructor",
            Field = "Field",
            Variable = "Variable",
            Class = "Class",
            Interface = "Interface",
            Module = "Module",
            Property = "Property",
            Unit = "Unit",
            Value = "Value",
            Enum = "Enum",
            Keyword = "Keyword",
            Snippet = "Snippet",
            Color = "Color",
            File = "File",
            Reference = "Reference",
            Folder = "Folder",
            EnumMember = "EnumMember",
            Constant = "Constant",
            Struct = "Struct",
            Event = "Event",
            Operator = "Operator",
            TypeParameter = "TypeParameter",
        }

        vim.diagnostic.config({
            virtual_text = {
                source = "always", -- Or "if_many"
            },
            float = {
                source = "always", -- Or "if_many"
            },
        })

        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            underline = true,
            update_in_insert = true,
            severity_sort = true,
        })


        vim.keymap.set("n", "<Leader>dl", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<Leader>dc", "<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope='cursor'})<CR>",
            { noremap = true, silent = true })
        vim.keymap.set("n", "<Leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<Leader>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
        -- vim.keymap.set("n", "<Leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<Leader>F", "<cmd>lua vim.lsp.buf.format({async=true})<CR>", { noremap = true, silent = true })
    end,
}
