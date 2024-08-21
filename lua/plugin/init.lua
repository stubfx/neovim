return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function ()
            require('catppuccin').setup {
                transparent_background = true, -- disables setting the background color.
            }
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require('lualine').setup {
                options = {
                    theme = "catppuccin"
                    -- ... the rest of your lualine config
                }
            }
        end
    },
    {
        "folke/zen-mode.nvim",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    {
        "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}
    }
}
