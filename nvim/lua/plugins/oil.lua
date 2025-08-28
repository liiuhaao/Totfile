vim.pack.add({
    "https://github.com/stevearc/oil.nvim",
    "https://github.com/benomahony/oil-git.nvim",
})
require("oil").setup({
    keymaps = {
        ["gd"] = {
        desc = "Toggle file detail view",
        callback = function()
            detail = not detail
            if detail then
            require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
            else
            require("oil").set_columns({ "icon" })
            end
        end,
        },
    },
})
