require("tmux").setup({
    copy_sync = {
        enable = true,
    },
    navigation = {
        enable_default_keybindings = false,
    },
    resize = {
        enable_default_keybindings = false,
    },
})
map("n", "<A-H>", ":lua require('tmux').resize_left()<CR>", { noremap = true, silent = true })
map("n", "<A-J>", ":lua require('tmux').resize_bottom()<CR>", { noremap = true, silent = true })
map("n", "<A-K>", ":lua require('tmux').resize_top()<CR>", { noremap = true, silent = true })
map("n", "<A-L>", ":lua require('tmux').resize_right()<CR>", { noremap = true, silent = true })
map("n", "<A-h>", ":lua require('tmux').move_left()<cr>", { noremap = true, silent = true })
map("n", "<A-j>", ":lua require('tmux').move_bottom()<cr>", { noremap = true, silent = true })
map("n", "<A-k>", ":lua require('tmux').move_top()<cr>", { noremap = true, silent = true })
map("n", "<A-l>", ":lua require('tmux').move_right()<cr>", { noremap = true, silent = true })
