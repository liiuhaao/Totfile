local lsp = require('feline.providers.lsp')
local vi_mode_utils = require('feline.providers.vi_mode')

local colors = {
    bg = 'NONE',
    fg = '#a89984',
    black = '#282828',
    violet = '#d3869b',
    red= "#cc241d",
    green= "#98971a",
    yellow= "#d79921",
    blue= "#458588",
    magenta= "#b16286",
    cyan= "#689d6a",
    white= "#a89984",
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

local LspName = {
    provider = 'lsp_client_names',
    hl = {
        fg = 'yellow',
    },
    right_sep = ' '
}

local fileFormat = {
    provider = function() return '' .. vim.bo.fileformat:upper() .. '' end,
    hl = {
        fg = 'white',
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

local lineInfo = {
    provider = 'position',
    hl = {
        fg = 'white',
    },
    right_sep = ' '
}

local linePercent = {
    provider = 'line_percentage',
    hl = {
        fg = 'white',
    },
    right_sep = ' '
}

local scrollBar = {
    provider = 'scroll_bar',
    hl = {
        fg = 'yellow',
    },
}

local fileType = {
    provider = 'file_type',
    hl = {
        fg = 'fg',
    },
}

local components = {
    active = {
        { vi_mode, filename, gitBranch, diffAdd, diffModfified, diffRemove, diagnosticErrors, diagnosticWarn, diagnosticHint, diagnosticInfo },
        { LspName },
        { fileFormat, fileEncode, lineInfo, linePercent, scrollBar },
    },
    inactive = {
        { vi_mode, fileType },
        {},
        { fileFormat, fileEncode, lineInfo, linePercent, scrollBar },
    },
}

require('feline').setup({
    theme = colors,
    vi_mode_colors = vi_mode_colors,
    components = components,
    force_inactive = force_inactive,
})
