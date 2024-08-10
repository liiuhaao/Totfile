return
{
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        local wk = require("which-key")
        wk.add({
            mode = { "n", "v" },
            { "<leader>s", group = "Save", icon = "" },
            { "<leader>t", group = "Terminal" },
            { "<leader>e", group = "Explore", icon = "󰙅" },
            { "<leader>b", group = "buffer" },
            { "<leader>c", group = "code", icon = "" },
            { "<leader>d", group = "diagnostic" },
            { "<leader>f", group = "find" },
            { "[", group = "prev" },
            { "]", group = "next" },
            { "g", group = "goto" },

        })
    end
}
