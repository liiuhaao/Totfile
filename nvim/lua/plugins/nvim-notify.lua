-- lazy.nvim
return {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    opts = {
        timeout = 3000,
        background_colour = "#000000",
        max_width = function()
            return math.floor(vim.o.columns * 0.5)
        end,
    },
}
