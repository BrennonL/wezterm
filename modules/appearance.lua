local wezterm = require("wezterm")

local module = {}

--- applyColorScheme sets the color scheme of the config
-- @param config - the config object where settings are stored
function module.applyColorScheme(config)
  config.color_scheme = 'Glacier'
end

--- applyTabBarConfig configures the tab bar settings
-- @param config - the config object where settings are stored
function module.applyTabBarConfig(config)
  config.tab_bar_at_bottom = true
  -- config.use_fancy_tab_bar = true
end

return module