return
{
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
    },
    config = function()
        local wk = require("which-key")
        wk.add({
            { "<leader>", "<nop>", mode = "n" },
            { "<esc>", "<cmd>noh<cr>", mode = "n", },
            { "<leader>?", function() require("which-key").show() end, icon = "󰌌", desc = "Keymaps" },

            { "<leader>s", "<cmd>w<cr>", mode = "n", icon = "", desc = "Save" },
            { "<leader>q", "<cmd>q<cr>", mode = "n", desc = "Quit" },
            { "<leader>Q", "<cmd>q!<cr>", mode = "n", desc = "Quit force" },

            { "<leader>w", proxy = "<c-w>", group = "Window" },
            { "<c-h>", "<c-w>h", mode = "n" },
            { "<c-j>", "<c-w>j", mode = "n" },
            { "<c-k>", "<c-w>k", mode = "n" },
            { "<c-l>", "<c-w>l", mode = "n" },

            { "<c-f>", "<right>", mode = "i" },
            { "<c-b>", "<left>", mode = "i" },

            { "<leader>b", group = "Buffer" },
            { "<leader>bn", "<cmd>bnext<cr>", mode = "n" },
            { "<leader>bp", "<cmd>bn<cr>", mode = "n" },
            { "<leader>bn", "<cmd>bd<cr>", mode = "n" },

            { "<leader>f", group = "Find" },
            { "<leader>ff", require('fzf-lua').files, mode = "n", desc = "Find file" },
            { "<leader>fo", require('fzf-lua').oldfiles, mode = "n", desc = "Find oldfiles" },
            { "<leader>fg", require('fzf-lua').live_grep, mode = "n", desc = "Live grep" },
            { "<leader>f<leader>", require('fzf-lua').builtin, mode = "n", desc = "Fzf builtin" },

            { "<leader>d", group = "Diagnostic" },
            { "<leader>dl", "<cmd>lua vim.diagnostic.open_float()<cr>", mode = "n", desc = "Diagnostic float" },
            { "<leader>dc", "<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope='cursor'})<cr>", mode = "n", desc = "Diagnostic cursor float" },
            { "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>", mode = "n", desc = "Diagnostic prev" },
            { "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>", mode = "n", desc = "Diagnostic Next" },
            { "<leader>c", group = "Code", icon = "" },
            { "<leader>cn", "<cmd>lua vim.lsp.buf.rename()<cr>", mode = "n", desc = "Rename" },
            { "<leader>ca", require('fzf-lua').lsp_code_actions, mode = "n", desc = "Code Action" },

            -- { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", mode = "n" },
            { "gd", require('fzf-lua').lsp_definitions, mode = "n", desc = "Go to definitions" },
            { "gd", require('fzf-lua').lsp_references, mode = "n", desc = "Go to references" },

            { "K", "<cmd>lua vim.lsp.buf.hover()<cr>", mode = "n", desc = "Lsp hover" },
            { "<c-k>", "<cmd>lua vim.lsp.buf.signature_help()<cr>", mode = "i" },

            { "<leader>F", "<cmd>lua vim.lsp.buf.format({async=true})<cr>", mode = "n", desc = "Format" },

            { "<", "<gv", mode = "v", desc = "Indeent Decrease" },
            { ">", ">gv", mode = "v", desc = "Indeent Increase" },

            { "<leader>e", "<cmd>Neotree toggle<cr>", mode = "n", icon = "󰙅", desc = "Explore Neotree" },
            -- { "<leader><Tab>",     "<cmd>Lexplore<cr>",              mode = "n", }

            -- { "<leader>t", group = "terminal" },
            { "<leader>t", "<Cmd>ToggleTerm<cr>", mode = "n", desc = "Terminal" },
            { "<c-n>", "<c-\\><c-n>", mode = "t" },
            { "<c-h>", "<c-\\><c-n><c-w>h", mode = "t" },
            { "<c-j>", "<c-\\><c-n><c-w>j", mode = "t" },
            { "<c-k>", "<c-\\><c-n><c-w>k", mode = "t" },
            { "<c-l>", "<c-\\><c-n><c-w>l", mode = "t" },
            { "<c-w>", "<c-\\><c-n><c-w>", mode = "t" },

        })
    end
}
