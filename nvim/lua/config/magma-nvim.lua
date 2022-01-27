vim.cmd("nnoremap <expr><silent> <Leader>r  nvim_exec('MagmaEvaluateOperator', v:true)")
-- map("n", "<Leader>r", ":MagmaEvaluateOperator<CR>", { noremap = true, silent = true, expr = true })
map("x", "<Leader>r", ":<C-u>MagmaEvaluateVisual<CR>", {noremap=true,silent=true})
map("n", "<Leader>rr", ":MagmaEvaluateLine<CR>", {noremap=true,silent=true})
map("n", "<Leader>rc", ":MagmaReevaluateCell<CR>", {noremap=true,silent=true})
map("n", "<Leader>rd", ":MagmaDelete<CR>", {noremap=true,silent=true})
map("n", "<Leader>ro", ":MagmaShowOutput<CR>", {noremap=true,silent=true})
map("n", "<Leader>R", ":MagmaInit<CR>", {noremap=true,silent=true})
vim.g.magma_automatically_open_output = false
