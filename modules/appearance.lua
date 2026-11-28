local wezterm = require("wezterm")

local module = {}

local function tab_title(tab_data)
  local title = tab_data.tab_title
  if title and #title > 0 then
    return title
  end
  return tab_data.active_pane.title
end

wezterm.on(
  'format-tab-title',
  function (tab, tabs, panes, config, hover, max_width)
    local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider
    local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider
    local edge_background = "#2E343C"
    local background = "#35A770"
    local foreground = "#2E343C"
    local edge_foreground = background
    if tab.is_active then
        background = "#1F5872" 
        foreground = "#2E343C"
    elseif hover then
      background = "#1F5872"
      foreground = "#2E343C"
    end
    local title = tab_title(tab)
    title = wezterm.truncate_right(title, max_width - 2)
    return {
      { Background = { Color = edge_background } },
      { Foreground = { Color = edge_foreground } },
      { Text = SOLID_LEFT_ARROW },
      { Background = { Color = background } },
      { Foreground = { Color = foreground } },
      { Text = title },
      { Background = { Color = edge_background } },
      { Foreground = { Color = edge_foreground } },
      { Text = SOLID_RIGHT_ARROW },
    }
  end
)

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

  config.colors = {
    tab_bar = {
      background = "#BFCBC2",
      active_tab = {
        bg_color = "#35A770",
        fg_color = "#2E343C",
      },
      inactive_tab = {
        bg_color = "#1F5872",
        fg_color = "#2E343C"
      },
      inactive_tab_hover = {
        bg_color = "#B7C3F3",
        fg_color = "#2E343C"
      },
      new_tab = {
        bg_color = "#1F5872",
        fg_color = "#2E343C"
      },
      new_tab_hover = {
        bg_color = "#B7C3F3",
        fg_color = "#2E343C"
      }
    }
  }
end


return module