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

-- plugins
local function load_plugins()
    local plugins_dir = vim.fn.stdpath("config") .. "/lua/plugins"
    local files = vim.fn.glob(plugins_dir .. "/*.lua", true, true)
    for _, file in ipairs(files) do
        local name = vim.fn.fnamemodify(file, ":t:r")  -- 文件名（不含扩展）
        local module = "plugins." .. name
        local ok, err = pcall(require, module)
        if not ok then
            vim.notify("Failed to load plugin config " .. module .. ": " .. err, vim.log.levels.ERROR)
        end
    end
end

load_plugins()
