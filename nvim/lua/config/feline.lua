local lsp = require('feline.providers.lsp')
local vi_mode_utils = require('feline.providers.vi_mode')

local colors = {
    bg = 'NONE',
    fg = '#a89984',
    black = '#282828',
    violet = '#d3869b',
    red = "#cc241d",
    green = "#98971a",
    yellow = "#d79921",
    blue = "#458588",
    magenta = "#b16286",
    cyan = "#689d6a",
    white = "#a89984",
}

local vi_mode_colors = {
    NORMAL = 'blue',
    OP = 'blue',
    INSERT = 'green',
    CONFIRM = 'green',
    VISUAL = 'red',
    LINES = 'red',
    BLOCK = 'red',
    REPLACE = 'violet',
    ['V-REPLACE'] = 'violet',
    ENTER = 'cyan',
    MORE = 'cyan',
    SELECT = 'orange',
    COMMAND = 'blue',
    SHELL = 'blue',
    TERM = 'blue',
    NONE = 'yellow'
}

local os_icons = {
    linux = ' ',
    macos = ' ',
    windows = ' ',
}

local force_inactive = {
    filetypes = {
        'NvimTree',
        'dbui',
        'packer',
        'startify',
        'fugitive',
        'fugitiveblame'
    },

    buftypes = {
        'terminal',
    },
    bufnames = {}
}

local indicator = {
    provider = ' ',
    hl = function()
        local val = {}

        val.bg = vi_mode_utils.get_mode_color()
        val.fg = 'black'

        return val
    end,
    right_sep = ' '
}

local vi_mode = {
    provider = ' ',
    hl = function()
        local val = {}

        val.bg = vi_mode_utils.get_mode_color()
        val.fg = 'black'

        return val
    end,
    right_sep = ' '
}

local filename = {
    provider = 'file_info',
    hl = {
        fg = 'white',
    },
    right_sep = {
        str = ' ',
        hl = {
            fg = 'white',
        },
    }
}


local navic = {
    provider = function()
        return require("nvim-navic").get_location()
    end,
    enabled = function()
        return require("nvim-navic").is_available()
    end,
    left_sep = {
        str = '> ',
        hl = {
            fg = 'white',
        },
    }
}


local gitBranch = {
    provider = 'git_branch',
    hl = {
        fg = 'yellow',
    }
}

local diffAdd = {
    provider = 'git_diff_added',
    hl = {
        fg = 'green',
    }
}

local diffModfified = {
    provider = 'git_diff_changed',
    hl = {
        fg = 'orange',
    }
}

local diffRemove = {
    provider = 'git_diff_removed',
    hl = {
        fg = 'red',
    },
}

local diagnosticErrors = {
    provider = 'diagnostic_errors',
    enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.ERROR) end,
    hl = {
        fg = 'red',
    }
}

local diagnosticWarn = {
    provider = 'diagnostic_warnings',
    enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.WARN) end,
    hl = {
        fg = 'yellow',
    }
}

local diagnosticHint = {
    provider = 'diagnostic_hints',
    enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.HINT) end,
    hl = {
        fg = 'cyan',
    }
}

local diagnosticInfo = {
    provider = 'diagnostic_info',
    enabled = function() return lsp.diagnostics_exist(vim.diagnostic.severity.INFO) end,
    hl = {
        fg = 'blue',
    }
}

local fileFormatEncode = {
    provider = function()
        local os = vim.bo.fileformat:upper()
        local encoding = vim.bo.fileencoding:upper()
        local icon
        if os == 'UNIX' then
            icon = os_icons.linux
        elseif os == 'MAC' then
            icon = os_icons.macos
        else
            icon = os_icons.windows
        end
        return ' ' .. icon .. encoding
    end,
    hl = {
        fg = 'magenta',
    },
    right_sep = ' '
}

local fileEncode = {
    provider = 'file_encoding',
    hl = {
        fg = 'white',
    },
    right_sep = ' '
}

local fileType = {
    provider = 'file_type',
    hl = {
        fg = 'green',
    },
}

local lineInfo = {
    provider = 'position',
    hl = {
        fg = 'green',
    },
    right_sep = ' '
}

local linePercent = {
    provider = 'line_percentage',
    hl = {
        fg = 'green',
    },
    right_sep = ' '
}

local scrollBar = {
    provider = 'scroll_bar',
    hl = {
        fg = 'green',
    },
}


local statusline = {
    active = {
        { vi_mode, filename, navic },
        {},
        { gitBranch, diffAdd, diffModfified, diffRemove, diagnosticErrors, diagnosticWarn, diagnosticHint, diagnosticInfo,
            fileFormatEncode, lineInfo, linePercent, scrollBar },
    },
    inactive = {
        { vi_mode, fileType },
        {},
        { fileFormatEncode, fileEncode, lineInfo, linePercent, scrollBar },
    },
}

local winbar = {
    active = {
        { filename, navic },
        {},
        {},
    },
}

require('feline').setup({
    theme = colors,
    vi_mode_colors = vi_mode_colors,
    components = statusline,
    force_inactive = force_inactive,
})
-- require('feline').winbar.setup({
--     theme = colors,
--     components = winbar,
--     force_inactive = force_inactive,
-- })
