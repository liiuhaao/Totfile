return {
    -- dir = '~/Projects/switchcolor.nvim',
    "liiuhaao/switchcolor.nvim",
    config = function()
        require("switchcolor").setup({
            -- scheme = "blue",
            -- background = "none",
            -- file_path = vim.fn.stdpath("config") .. "/color.lua"
        })
    end
}
