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
            { "<leader>w", proxy = "<c-w>", group = "windows" },
            { "<leader>-", desc = "Split horizentally", icon = "" },
            { "<leader>\\", desc = "Split vertically", icon = "" },
            { "[", group = "prev" },
            { "]", group = "next" },
            { "g", group = "goto" },
            { "<leader>0", hidden = true },
            { "<leader>1", hidden = true },
            { "<leader>2", hidden = true },
            { "<leader>3", hidden = true },
            { "<leader>4", hidden = true },
            { "<leader>5", hidden = true },
            { "<leader>6", hidden = true },
            { "<leader>7", hidden = true },
            { "<leader>8", hidden = true },
            { "<leader>9", hidden = true },
            { "<leader>0", hidden = true },

        })
    end
}
