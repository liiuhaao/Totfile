vim.fn.sign_define("LspDiagnosticsSignError", {
    text = "",
    texthl = "LspDiagnosticsSignError",
    numhl = "LspDiagnosticsSignError",
})
vim.fn.sign_define("LspDiagnosticsSignWarning", {
    texthl = "LspDiagnosticsSignWarning",
    text = "",
    numhl = "LspDiagnosticsSignWarning",
})
vim.fn.sign_define("LspDiagnosticsSignHint", {
    texthl = "LspDiagnosticsSignHint",
    text = "",
    numhl = "LspDiagnosticsSignHint",
})
vim.fn.sign_define("LspDiagnosticsSignInformation", {
    texthl = "LspDiagnosticsSignInformation",
    text = "",
    numhl = "LspDiagnosticsSignInformation",
})
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = { prefix = " ", spacing = 4 },
    signs = true,
    underline = true,
})
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "none" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "none" })

vim.lsp.protocol.CompletionItemKind = {
    Text = " Text",
    Method = " Method",
    Function = " Function",
    Constructor = " Constructor",
    Field = " Field",
    Variable = " Variable",
    Class = "ﴯ Class",
    Interface = " Interface",
    Module = " Module",
    Property = "ﰠ Property",
    Unit = " Unit",
    Value = " Value",
    Enum = " Enum",
    Keyword = " Keyword",
    Snippet = " Snippet",
    Color = " Color",
    File = " File",
    Reference = " Reference",
    Folder = " Folder",
    EnumMember = " EnumMember",
    Constant = " Constant",
    Struct = " Struct",
    Event = " Event",
    Operator = " Operator",
    TypeParameter = " TypeParameter",
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

vim.cmd([[
  highlight DiagnosticLineNrError guifg=#fb4934 gui=bold
  highlight DiagnosticLineNrWarn guifg=#fe8019 gui=bold
  highlight DiagnosticLineNrInfo guifg=#83a598 gui=bold
  highlight DiagnosticLineNrHint guifg=#8ec07c gui=bold

  sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
  sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
  sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
  sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
]])

map("n", "<Leader>dl", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
map("n", "<Leader>dc", "<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope='cursor'})<CR>", { noremap = true, silent = true })
map("n", "<Leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
map("n", "<Leader>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", { noremap = true, silent = true })
map("n", "<Leader><Leader>", "<cmd>lua vim.lsp.buf.formatting()<CR>", { noremap = true, silent = true })

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
    -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "i", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", { noremap = true, silent = true })

    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })
    -- vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        "documentation",
        "detail",
        "additionalTextEdits",
    },
}
require("lspconfig").html.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "/usr/bin/vscode-html-languageserver", "--stdio" },
})
require("lspconfig").cssls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "/usr/bin/vscode-css-languageserver", "--stdio" },
})
require("lspconfig").jsonls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "/usr/bin/vscode-json-languageserver", "--stdio" },
})
require("lspconfig").sumneko_lua.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "/usr/bin/lua-language-server" },
})
require("lspconfig").jdtls.setup({ on_attach = on_attach, capabilities = capabilities, cmd = { "/usr/bin/jdtls" } })

require("lspconfig").pylsp.setup({on_attach=on_attach, capabilities = capabilities })
-- require("lspconfig").pyright.setup({ on_attach = on_attach, capabilities = capabilities })
require("lspconfig").bashls.setup({ on_attach = on_attach, capabilities = capabilities })
require("lspconfig").yamlls.setup({ on_attach = on_attach, capabilities = capabilities })
require("lspconfig").texlab.setup({ on_attach = on_attach, capabilities = capabilities })
require("lspconfig").clangd.setup({ on_attach = on_attach, capabilities = capabilities })
