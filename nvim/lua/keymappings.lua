map("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = " "

map("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
map("n", "<C-q>", ":q!<CR>", { noremap = true, silent = true })
map("n", "<ESC>", "<cmd>noh<CR>", { noremap = true, silent = true })

map("n", "<Leader>k", ":bprevious<CR>", { noremap = true, silent = true })
map("n", "<Leader>j", ":bnext<CR>", { noremap = true, silent = true })
map("n", "<Leader>q", ":bd<CR>", { noremap = true, silent = true })
map(
    "n",
    "<A-b>",
    "<cmd>execute'set showtabline=' . (&showtabline ==# 0 ? 2 : 0)<CR>",
    { noremap = true, silent = true }
)

-- map("v", "<", "<gv", { noremap = true, silent = true })
-- map("v", ">", ">gv", { noremap = true, silent = true })
map("v", "H", "<gv", { noremap = true, silent = true })
map("v", "L", ">gv", { noremap = true, silent = true })
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- map("n", "<Leader>y", '"+y', { noremap = true, silent = true })
-- map("v", "<Leader>y", '"+y', { noremap = true, silent = true })
-- map("n", "<Leader>Y", '"+Y', { noremap = true, silent = true })
-- map("v", "<Leader>p", '"+p', { noremap = true, silent = true })
-- map("n", "<Leader>p", '"+p', { noremap = true, silent = true })
-- map("n", "<Leader>P", '"+P', { noremap = true, silent = true })
-- map("v", "<Leader>P", '"+P', { noremap = true, silent = true })

map("n", "<Leader>s", "<cmd>wincmd s<CR>", { noremap = true, silent = true })
map("n", "<Leader>v", "<cmd>wincmd v<CR>", { noremap = true, silent = true })

-- map("n", "<A-K>", "<cmd>wincmd +<CR>", { noremap = true, silent = true })
-- map("n", "<A-J>", "<cmd>wincmd -<CR>", { noremap = true, silent = true })
-- map("n", "<A-L>", "<cmd>wincmd ><CR>", { noremap = true, silent = true })
-- map("n", "<A-H>", "<cmd>wincmd <<CR>", { noremap = true, silent = true })

-- map("n", "<A-h>", "<C-w><C-h>", { noremap = true, silent = true })
-- map("n", "<A-j>", "<C-w><C-j>", { noremap = true, silent = true })
-- map("n", "<A-k>", "<C-w><C-k>", { noremap = true, silent = true })
-- map("n", "<A-l>", "<C-w><C-l>", { noremap = true, silent = true })
-- map("t", "<A-h>", "<C-\\><C-n><C-w><C-h>", { noremap = true, silent = true })
-- map("t", "<A-j>", "<C-\\><C-n><C-w><C-j>", { noremap = true, silent = true })
-- map("t", "<A-k>", "<C-\\><C-n><C-w><C-k>", { noremap = true, silent = true })
-- map("t", "<A-l>", "<C-\\><C-n><C-w><C-l>", { noremap = true, silent = true })
-- map("t", "<A-w>", "<C-\\><C-n><C-w>", { noremap = true, silent = true })
-- map("t", "<A-n>", "<C-\\><C-n>", { noremap = true, silent = true })

map("i", "<C-f>", "<Right>", { noremap = true, silent = true })
map("i", "<C-b>", "<Left>", { noremap = true, silent = true })

map("n", "s", ":source ~/.config/nvim/init.lua<cr>", { noremap = true })
map("n", "<Leader><Tab>", ":Lexplore<cr>", { noremap = true, silent = true })
