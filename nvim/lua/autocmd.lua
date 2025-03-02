-- Highlight on yank
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({ timeout = 500 })
    end,
})

-- Use relative & absolute line numbers in 'n' & 'i' modes respectively
autocmd("InsertEnter", {
    callback = function()
        vim.opt.relativenumber = false
    end,
})
autocmd("InsertLeave", {
    callback = function()
        vim.opt.relativenumber = true
    end,
})

autocmd("BufReadPost", {
    callback = function()
        if not vim.fn.expand("%:p"):match ".git" and vim.fn.line "'\"" > 1 and vim.fn.line "'\"" <= vim.fn.line "$" then
            vim.cmd "normal! g'\""
            vim.cmd "normal zz"
        end
    end,
})


vim.api.nvim_create_autocmd("VimLeave", {
    callback = function()
        local tmux_env = vim.fn.getenv("TMUX")
        if tmux_env ~= vim.NIL and tmux_env ~= "" then
            local pane_count = tonumber(vim.fn.system("tmux list-panes | wc -l"))
            if pane_count > 1 then
                vim.fn.system("tmux killp")
            end
        end
    end
})
