map("n", "<Space>", "<NOP>", { noremap = true, silent = true })

map("n", "<Leader>w", ":w<CR>", { noremap = true, silent = true })
map("n", "<Leader>q", ":q<CR>", { noremap = true, silent = true })
map("n", "<Leader>W", ":W<CR>", { noremap = true, silent = true })
map("n", "<Leader>Q", ":q!<CR>", { noremap = true, silent = true })
map("n", "<ESC>", "<cmd>noh<CR>", { noremap = true, silent = true })

-- map("n", "<C-w>", ":bd<CR>", { noremap = true,silent=true})
-- map("n", "<C-q>", ":q!<CR>", { noremap = true,silent=true})
-- map("n", "<C-s>", ":w!<CR>", { noremap = true,silent=true})

map("n", "<Leader>p", ":bprevious<CR>", { noremap = true, silent = true })
map("n", "<Leader>n", ":bnext<CR>", { noremap = true, silent = true })
-- map("n", "<A-q>", ":bp|bd #<CR>", { noremap = true,silent=true})
-- map("n", "<A-b>", "<cmd>execute'set showtabline=' . (&showtabline ==# 0 ? 2 : 0)<CR>", { noremap = true,silent=true})

map("v", "<", "<gv", { noremap = true, silent = true })
map("v", ">", ">gv", { noremap = true, silent = true })

map("n", "<Leader>-", "<cmd>wincmd s<CR>", { noremap = true, silent = true })
map("n", "<Leader>\\", "<cmd>wincmd v<CR>", { noremap = true, silent = true })

map("n", "<Leader>h", "<C-w>h", { noremap = true, silent = true })
map("n", "<Leader>j", "<C-w>j", { noremap = true, silent = true })
map("n", "<Leader>k", "<C-w>k", { noremap = true, silent = true })
map("n", "<Leader>l", "<C-w>l", { noremap = true, silent = true })

map("n", "<Leader>K", "<cmd>wincmd +<CR>", { noremap = true, silent = true })
map("n", "<Leader>J", "<cmd>wincmd -<CR>", { noremap = true, silent = true })
map("n", "<Leader>L", "<cmd>wincmd ><CR>", { noremap = true, silent = true })
map("n", "<Leader>H", "<cmd>wincmd <<CR>", { noremap = true, silent = true })

map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

map("n", "<Up>", "<cmd>wincmd +<CR>", { noremap = true, silent = true })
map("n", "<Down>", "<cmd>wincmd -<CR>", { noremap = true, silent = true })
map("n", "<Right>", "<cmd>wincmd ><CR>", { noremap = true, silent = true })
map("n", "<Left>", "<cmd>wincmd <<CR>", { noremap = true, silent = true })

map("i", "<C-f>", "<Right>", { noremap = true, silent = true })
map("i", "<C-b>", "<Left>", { noremap = true, silent = true })

map("n", "<Leader>v", "<C-w>v", { noremap = true, silent = true })
map("n", "<Leader>s", "<C-w>s", { noremap = true, silent = true })

-- map("n", "<Leader><S-Tab>", ":Lexplore %:p:h<CR>", { noremap = true,silent=true})
-- map("n", "<Leader><Tab>", ":Lexplore<CR>", { noremap = true,silent=true})
map("n", "<Leader>cd", ":cd %:h<CR>", { noremap = true, silent = false })
