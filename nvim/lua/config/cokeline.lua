local get_hex = require("cokeline/utils").get_hex

local green = "#b8bb26"
local orange = "#fe8019"

local bg1 = "#3c3836"
local bg0 = "#282828"
local bg2 = "#504945"
local bg3 = "#665c54"
local bg4 = "#7c6f64"

local fg0 = "#fbf1c7"
local fg1 = "#ebdbb2"
local fg2 = "#d5c4a1"
local fg3 = "#bdae93"
local fg4 = "#a89984"

require("cokeline").setup({
    default_hl = {
        focused = {
            fg = fg2,
            bg = bg1,
        },
        unfocused = {
            fg = fg2,
            bg = bg0,
        },
    },

    components = {
        {
            text = "▎",
            hl = {
                fg = function(buffer)
                    return buffer.is_modified and orange or green
                end,
            },
        },
        {
            text = function(buffer)
                return "     " .. buffer.devicon.icon
            end,
            hl = {
                fg = function(buffer)
                    return buffer.devicon.color
                end,
            },
        },
        {
            text = function(buffer)
                return buffer.unique_prefix
            end,
            hl = {
                fg = get_hex("Comment", "fg"),
            },
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
    rendering = {
        left_sidebar = {
            filetype = "NvimTree",
            components = {
                {
                    text = "  NvimTree",
                    hl = {
                        fg = orange,
                        bg = get_hex("NvimTreeNormal", "bg"),
                        style = "bold",
                    },
                },
            },
        },
    },
})
map("n", "<Leader>k", "<Plug>(cokeline-focus-prev)", { silent = true })
map("n", "<Leader>j", "<Plug>(cokeline-focus-next)", { silent = true })
map("n", "<Leader>K", "<Plug>(cokeline-switch-prev)", { silent = true })
map("n", "<Leader>J", "<Plug>(cokeline-switch-next)", { silent = true })

for i = 1, 9 do
    map("n", ("<Leader>%s"):format(i), ("<Plug>(cokeline-focus-%s)"):format(i), { silent = true })
end
