map = vim.api.nvim_set_keymap

map("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = " "

map("n", "<Leader>w", ":w<CR>", { noremap = true, silent = true })
map("n", "<Leader>Q", ":q!<CR>", { noremap = true, silent = true })
map("n", "<Leader>q", ":bd<CR>", { noremap = true, silent = true })
map("n", "<ESC>", "<cmd>noh<CR>", { noremap = true, silent = true })

map("n", "<Leader>p", ":bprevious<CR>", { noremap = true, silent = true })
map("n", "<Leader>n", ":bnext<CR>", { noremap = true, silent = true })
-- map("n", "<A-q>", ":bp|bd #<CR>", { noremap = true, silent = true })
-- map("n", "<A-b>", "<cmd>execute'set showtabline=' . (&showtabline ==# 0 ? 2 : 0)<CR>", { noremap = true, silent = true })

map("v", "<", "<gv", { noremap = true, silent = true })
map("v", ">", ">gv", { noremap = true, silent = true })

map("n", "<Leader>-", "<cmd>wincmd s<CR>", { noremap = true, silent = true })
map("n", "<Leader>\\", "<cmd>wincmd v<CR>", { noremap = true, silent = true })

map("n", "<Leader>K", "<cmd>wincmd +<CR>", { noremap = true, silent = true })
map("n", "<Leader>J", "<cmd>wincmd -<CR>", { noremap = true, silent = true })
map("n", "<Leader>L", "<cmd>wincmd ><CR>", { noremap = true, silent = true })
map("n", "<Leader>H", "<cmd>wincmd <<CR>", { noremap = true, silent = true })

map("n", "<Leader>h", "<C-w>h", { noremap = true, silent = true })
map("n", "<Leader>j", "<C-w>j", { noremap = true, silent = true })
map("n", "<Leader>k", "<C-w>k", { noremap = true, silent = true })
map("n", "<Leader>l", "<C-w>l", { noremap = true, silent = true })

map("i", "<C-f>", "<Right>", { noremap = true, silent = true })
map("i", "<C-b>", "<Left>", { noremap = true, silent = true })

-- map("n", "<Leader><S-Tab>", ":Lexplore %:p:h<CR>", { noremap = true, silent = true })
map("n", "<Leader><Tab>", ":Lexplore<CR>", { noremap = true, silent = true })
map("n", "<Leader>cd", ":cd %:h<CR>", { noremap = true, silent = false })

-- map("n", "<Tab>", ":b ", { noremap = true, silent = false })
