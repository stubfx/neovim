return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function ()
            require('catppuccin').setup {
                -- flavour = "auto", -- latte, frappe, macchiato, mocha
                background = { -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = true, -- disables setting the background color.
                show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
                term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false, -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15, -- percentage of the shade to apply to the inactive window
                },
                no_italic = false, -- Force no italic
                no_bold = false, -- Force no bold
                no_underline = false, -- Force no underline
                styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { "italic" }, -- Change the style of comments
                    conditionals = { "italic" },
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                    operators = {},
                    -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
                color_overrides = {
                    macchiato = {
                        green = "#3ae198",
                        blue = "#1bc5f2",
                        lavender = "#a899ff",
                        peach = "#ff940a",
                    }
                },
                custom_highlights = {
                    Normal = { fg = "#ffffff" },
                    Comment = { fg = "#6c6f93" }, -- Grey
                    Keyword = { fg = "#ff00ff", style = { "italic" } }, -- Vibrant pink
                    Function = { fg = "#00ffff" }, -- Bright cyan
                    Identifier = { fg = "#00aaff" }, -- Vibrant blue
                    Statement = { fg = "#ff6600" }, -- Orange
                    Type = { fg = "#ffff00" }, -- Yellow
                    String = { fg = "#00e600" }, -- Bright green
                    Number = { fg = "#00ccff" }, -- Light blue
                    Constant = { fg = "#ff33cc" }, -- Pink
                    Operator = { fg = "#cc00ff" }, -- Purple
                    -- Header colors
                    markdownH1 = { fg = "#ff00ff" }, -- Vibrant pink
                    markdownH2 = { fg = "#00ffff" }, -- Bright cyan
                    markdownH3 = { fg = "#00aaff" }, -- Vibrant blue
                    markdownH4 = { fg = "#ff6600" }, -- Orange
                    -- Code block
                    markdownCode = { fg = "#cc00ff" }, -- Purple
                    markdownCodeBlock = { fg = "#00ff00" }, -- Bright green
                    -- Special colors
                    Error = { fg = "#ff0000" }, -- Red
                    Warning = { fg = "#ffcc00" }, -- Yellow-orange
                    Info = { fg = "#0077ff" }, -- Bright blue
                    Hint = { fg = "#00ffcc" }, -- Cyan-green
                    -- Cursor line (optional if you want a specific color for cursor line)
                    CursorLine = { },
                    -- Popup menu
                    Pmenu = { fg = "#ffffff" }, -- White text for menu
                    PmenuSel = { fg = "#000000", bg = "#ff00ff" }, -- Black text on bright pink background
                }
            }
        end
    }
}
