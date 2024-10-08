return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")
            local install = require("nvim-treesitter.install")
            install.compilers = {"zig"}

            configs.setup({
                -- yeah, don't do this.
                -- ensure_installed = "all",
                ensure_installed = {"vim", "vimdoc", "lua", "javascript", "html", "python", "glsl"},
                -- especially on windows system, apparently it breaks? i still don't know why, possibly cmd
                -- will investigate, but for the moment installing sync works.
                -- found out why, fixed with zig above.
                -- you're probably asking for an explanation right? had to do something with libraries
                -- was working with sync probably cause of those, I've neever looked too much into it.
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
                refactor = {

                    highlight_definitions = {enable = true},
                    highlight_current_scope = {enable = true},
                    smart_rename = {
                        enable = true,
                        keymaps = {
                            smart_rename = "grr",
                        }
                    }
                }
            })
        end
    },
    {
        "nvim-treesitter/playground",
        dependencies = { "nvim-treesitter/nvim-treesitter" }  -- Ensures load order
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter/nvim-treesitter" }  -- Ensures load order
    }
}
