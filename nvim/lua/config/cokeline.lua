local get_hex = require("cokeline/utils").get_hex

local green = get_hex("healthSuccess", "bg")
local yellow = get_hex("healthWarning", "bg")
local red = get_hex("healthError", "bg")
local comment_fg = get_hex("Comment", "fg")

local components = {
    space = {
        text = " ",
    },
    tab = {
        text = "    ",
    },
    separator = {
        text = "▎",
        fg = function(buffer)
            return buffer.is_modified and yellow or green
        end,
    },
    devicons = {
        text = function(buffer)
            return buffer.devicon.icon
        end,
        fg = function(buffer)
            return buffer.devicon.color
        end,
    },
    index = {
        text = function(buffer)
            return buffer.index .. ": "
        end,
        truncation = { priority = 1 },
    },
    unique_prefix = {
        text = function(buffer)
            return buffer.unique_prefix
        end,
        fg = comment_fg,
    },
    filename = {
        text = function(buffer)
            return buffer.filename
        end,
        style = function(buffer)
            return (buffer.diagnostics.errors ~= 0 and "underline") or nil
        end,
    },

    diagnostics = {
        text = function(buffer)
            return (buffer.diagnostics.errors ~= 0 and "  " .. buffer.diagnostics.errors) or (buffer.diagnostics.warnings ~= 0 and "  " .. buffer.diagnostics.warnings) or ""
        end,
        fg = function(buffer)
            return (buffer.diagnostics.errors ~= 0 and red) or (buffer.diagnostics.warnings ~= 0 and yellow) or nil
        end,
        truncation = { priority = 1 },
    },
    close_or_unsaved = {
        text = function(buffer)
            return buffer.is_modified and "●" or ""
        end,
        fg = function(buffer)
            return buffer.is_modified and green or nil
        end,
        delete_buffer_on_left_click = true,
        truncation = { priority = 1 },
    },
}

require("cokeline").setup({
    buffers = {
        focus_on_delete = "prev",
    },

    default_hl = {
        fg = function(buffer)
            return buffer.is_focused and get_hex("Normal", "fg") or get_hex("Normal", "fg")
        end,
        bg = function(buffer)
            return buffer.is_focused and get_hex("ColorColumn", "bg") or get_hex("Normal", "bg")
        end,
    },

    components = {
        components.separator,
        components.devicons,
        components.index,
        components.unique_prefix,
        components.filename,
        components.space,
        components.diagnostics,
        components.space,
        components.close_or_unsaved,
        components.space,
    },
    sidebar = {
        filetype = "NvimTree",
        components = {
            {
                text = "▎NvimTree",
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
