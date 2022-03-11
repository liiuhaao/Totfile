local get_hex = require("cokeline/utils").get_hex

require("cokeline").setup({
    default_hl = {
        fg = function(buffer)
            return buffer.is_focused and get_hex("Normal", "fg") or get_hex("Normal", "fg")
        end,
        bg = function(buffer)
            return buffer.is_focused and get_hex("ColorColumn", "bg") or get_hex("Normal", "bg")
        end,
    },

    components = {
        {
            text = "▎",
            fg = function(buffer)
                return buffer.is_modified and get_hex("healthWarning", "bg") or get_hex("healthSuccess", "bg")
            end,
        },
        {
            text = function(buffer)
                return "     " .. buffer.devicon.icon
            end,
            fg = function(buffer)
                return buffer.devicon.color
            end,
        },
        {
            text = function(buffer)
                return buffer.unique_prefix
            end,
            fg = get_hex("Comment", "fg"),
        },
        {
            text = function(buffer)
                return buffer.filename .. "     "
            end,
        },
        {
            text = "",
            delete_buffer_on_left_click = true,
        },
        {
            text = " ",
        },
    },
    sidebar = {
        filetype = "NvimTree",
        components = {
            {
                text = "  NvimTree",
                fg = get_hex("NvimTreeFolderName", "fg"),
                bg = get_hex("NvimTreeNormal", "bg"),
                style = "bold",
            },
        },
    },
})
map("n", "<A-k>", "<Plug>(cokeline-focus-prev)", { silent = true })
map("n", "<A-j>", "<Plug>(cokeline-focus-next)", { silent = true })
map("n", "<A-K>", "<Plug>(cokeline-switch-prev)", { silent = true })
map("n", "<A-J>", "<Plug>(cokeline-switch-next)", { silent = true })

for i = 1, 9 do
    map("n", ("<A-%s>"):format(i), ("<Plug>(cokeline-focus-%s)"):format(i), { silent = true })
end
