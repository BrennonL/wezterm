local wezterm = require 'wezterm'
local view = require 'modules.appearance'

-- Initialize config structure
local config = {}

-- config.color_scheme = 'Glacier'
view.applyColorScheme(config)
view.applyTabBarConfig(config)

return config