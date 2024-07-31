return {
    "neovim/nvim-lspconfig",
    config = function()
        local signs = { Error = "", Warn = "", Hint = " ", Info = "" }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end

        -- signs priority
        -- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        --     vim.lsp.diagnostic.on_publish_diagnostics, {
        --         severity_sort = true
        --     }
        -- )

        map("n", "<Leader>dl", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true })
        map("n", "<Leader>dc", "<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope='cursor'})<CR>",
            { noremap = true })
        map("n", "<Leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true })
        map("n", "<Leader>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true })
        -- map("n", "<Leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", { noremap = true })
        map("n", "<Leader>F", "<cmd>lua vim.lsp.buf.format({async=true})<CR>", { noremap = true })
        map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true })
        map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true })
        map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true })
        map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true })
        map("i", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { noremap = true })
        map("n", "<Leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", { noremap = true })
        map("n", "<Leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", { noremap = true })
        map("n", "<Leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
            { noremap = true })
        map("n", "<Leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { noremap = true })
        map("n", "<Leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
    end,
}
