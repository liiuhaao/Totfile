local lsp = require('feline.providers.lsp')
local vi_mode_utils = require('feline.providers.vi_mode')

local colors = {
    bg = '#282828',
    black = '#282828',
    yellow = '#d8a657',
    cyan = '#89b482',
    oceanblue = '#45707a',
    green = '#a9b665',
    orange = '#e78a4e',
    violet = '#d3869b',
    magenta = '#c14a4a',
    white = '#a89984',
    fg = '#a89984',
    skyblue = '#7daea3',
    red = '#ea6962',
}

local vi_mode_colors = {
    NORMAL = 'skyblue',
    OP = 'skyblue',
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
    COMMAND = 'skyblue',
    SHELL = 'skyblue',
    TERM = 'skyblue',
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
        bg = 'bg',
    },
    right_sep = {
        str = ' ',
        hl = {
            fg = 'white',
            bg = 'bg',
        },
    }
}

local gitBranch = {
    provider = 'git_branch',
    hl = {
        fg = 'yellow',
        bg = 'bg',
    }
}

local diffAdd = {
    provider = 'git_diff_added',
    hl = {
        fg = 'green',
        bg = 'bg',
    }
}

local diffModfified = {
    provider = 'git_diff_changed',
    hl = {
        fg = 'orange',
        bg = 'bg',
    }
}

local diffRemove = {
    provider = 'git_diff_removed',
    hl = {
        fg = 'red',
        bg = 'bg',
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
        fg = 'skyblue',
    }
}

local LspName = {
    provider = 'lsp_client_names',
    hl = {
        fg = 'yellow',
        bg = 'bg',
    },
    right_sep = ' '
}

local fileFormat = {
    provider = function() return '' .. vim.bo.fileformat:upper() .. '' end,
    hl = {
        fg = 'white',
        bg = 'bg',
    },
    right_sep = ' '
}

local fileEncode = {
    provider = 'file_encoding',
    hl = {
        fg = 'white',
        bg = 'bg',
    },
    right_sep = ' '
}

local lineInfo = {
    provider = 'position',
    hl = {
        fg = 'white',
        bg = 'bg',
    },
    right_sep = ' '
}

local linePercent = {
    provider = 'line_percentage',
    hl = {
        fg = 'white',
        bg = 'bg',
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
        bg = 'black',
    },
}

local components = {
    active = {
        { vi_mode, filename, gitBranch, diffAdd, diffModfified, diffRemove, diagnosticErrors, diagnosticWarn, diagnosticHint, diagnosticInfo },
        { LspName },
        { fileFormat, fileEncode, lineInfo, linePercent, scrollBar },
    },
    inactive = { { vi_mode, fileType }, {}, { fileFormat, fileEncode, lineInfo, linePercent, scrollBar }, },
}

require('feline').setup({
    theme = colors,
    vi_mode_colors = vi_mode_colors,
    components = components,
    force_inactive = force_inactive,
})
