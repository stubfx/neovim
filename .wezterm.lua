-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { 'powershell.exe' }

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.window_background_opacity = 0.98
config.window_background_gradient = {
    -- preset = "Warm",
    colors = {'0e0c2a', '08061d', '000'},
    orientation = { Linear = { angle = -45.0 } }
}
-- config.background = {
--     -- This is the deepest/back-most layer. It will be rendered first
--     {
--         source = {
--             File = 'C:/Users/lucam/xp.jpg',
--         },
--         hsb = {brightness = 0.015}
--     }
-- }
return config
