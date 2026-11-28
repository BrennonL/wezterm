local wezterm = require 'wezterm'
local view = require 'modules.appearance'

-- Initialize config structure
local config = {}

-- local function tab_title(tab_data)
--   local title = tab_data.tab_title
--   if title and #title > 0 then
--     return title
--   end
--   return tab_data.active_pane.title
-- end

-- wezterm.on(
--   'format-tab-title',
--   function (tab, tabs, panes, config, hover, max_width)
--     local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider
--     local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider
--     local edge_background = "#BD0F2F"
--     local background = "#2E343C"
--     local foreground = "#35A770"
--     local edge_foreground = background
--     if tab.is_active then
--         background = "#1F5872" 
--         foreground = "#35A770"
--     elseif hover then
--       background = "#1F5872"
--       foreground = "#35A770"
--     end
--     local title = tab_title(tab)
--     -- local title = "Hello"
--     title = wezterm.truncate_right(title, max_width - 2)
--     return {
--       { Background = { Color = edge_background } },
--       { Foreground = { Color = edge_foreground } },
--       { Text = SOLID_LEFT_ARROW },
--       { Background = { Color = background } },
--       { Foreground = { Color = foreground } },
--       { Text = title },
--       { Background = { Color = edge_background } },
--       { Foreground = { Color = edge_foreground } },
--       { Text = SOLID_RIGHT_ARROW },
--     }
--   end
-- )
-- Apply configurations
config.automatically_reload_config = true
view.applyColorScheme(config)
view.applyTabBarConfig(config)

return config