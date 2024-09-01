map("n", "<leader>", "<nop>")
map("n", "<esc>", "<cmd>noh<cr>")

map("n", "<leader>s", "<cmd>w<cr>", { desc = "Save" })
map("n", "<c-s>", "<cmd>w<cr>", { desc = "Save" })

map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>Q", "<cmd>q!<cr>", { desc = "Quit force" })
map("n", "<c-q>", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<a-q>", "<cmd>q<cr>", { desc = "Quit" })

-- map("n", "<c-w>", "<cmd>bd<cr>", { desc = "Delete buffer" })
map("n", "<c-n>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<c-p>", "<cmd>bprev<cr>", { desc = "Prev buffer" })

map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>bp", "<cmd>bprev<cr>", { desc = "Prev buffer" })
map("n", "<leader>bd", "<cmd>bd<cr>", { desc = "Delete buffer" })

map("n", "<leader>-", "<cmd>split<cr>", { desc = "Split horizontally" })
map("n", "<leader>\\", "<cmd>vsplit<cr>", { desc = "Split vertically" })

map("n", "<a-h>", "<cmd>lua require('tmux').move_left()<cr>")
map("n", "<a-j>", "<cmd>lua require('tmux').move_bottom()<cr>")
map("n", "<a-k>", "<cmd>lua require('tmux').move_top()<cr>")
map("n", "<a-l>", "<cmd>lua require('tmux').move_right()<cr>")
map("n", "<a-H>", "<cmd>lua require('tmux').resize_left()<cr>")
map("n", "<a-J>", "<cmd>lua require('tmux').resize_bottom()<cr>")
map("n", "<a-K>", "<cmd>lua require('tmux').resize_top()<cr>")
map("n", "<a-L>", "<cmd>lua require('tmux').resize_right()<cr>")

-- map("n", "<c-h>", "<c-w>h")
-- map("n", "<c-j>", "<c-w>j")
-- map("n", "<c-k>", "<c-w>k")
-- map("n", "<c-l>", "<c-w>l")
map("i", "<c-f>", "<right>")
map("i", "<c-b>", "<left>")
map("i", "<c-a>", "<esc>^i")
map("i", "<c-e>", "<esc>$a")

map("n", "<leader>ff", "<cmd>lua require('fzf-lua').files()<cr>", { desc = "Find file" })
map("n", "<leader>fo", "<cmd>lua require('fzf-lua').oldfiles()<cr>", { desc = "Find oldfiles" })
map("n", "<leader>fg", "<cmd>lua require('fzf-lua').live_grep()<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>lua require('fzf-lua').buffers()<cr>", { desc = "Find buffer" })
map("n", "<leader>f<leader>", "<cmd>lua require('fzf-lua').builtin()<cr>", { desc = "Fzf builtin" })

map("n", "<leader>dl", "<cmd>lua vim.diagnostic.open_float()<cr>", { desc = "Diagnostic float" })
map("n", "<leader>dc", "<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope='cursor'})<cr>",
    { desc = "Diagnostic cursor float" })
map("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>", { desc = "Diagnostic prev" })
map("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>", { desc = "Diagnostic Next" })

map("n", "<leader>cn", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "Rename" })
map("n", "<leader>ca", "<cmd>lua require('fzf-lua').lsp_code_actions()<cr>", { desc = "Code Action" })
map("n", "<leader>cc", "<cmd>CopilotChatToggle<cr>", { desc = "Copilot Chat" })

-- map("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go to definition" })
map("n", "gd", "<cmd>lua require('fzf-lua').lsp_definitions()<cr>", { desc = "Go to definitions" })
map("n", "gr", "<cmd>lua require('fzf-lua').lsp_references()<cr>", { desc = "Go to references" })

map("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Lsp hover" })
map("i", "<c-k>", "<cmd>lua vim.lsp.buf.signature_help()<cr>", { desc = "Lsp signature help" })

map("n", "<leader>F", "<cmd>lua vim.lsp.buf.format({async=true})<cr>", { desc = "Format" })

map("v", "<", "<gv", { desc = "Indent Decrease" })
map("v", ">", ">gv", { desc = "Indent Increase" })

map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle NvimTree" })
map("n", "<c-e>", "<cmd>Neotree toggle<cr>", { desc = "Toggle NvimTree" })
