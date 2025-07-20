local wezterm = require("wezterm")
local act = wezterm.action

local config = {}
-- Use config builder object if possible
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Spawn a fish shell in login mode
config.default_prog = { "/usr/bin/fish", "-l" }
config.color_scheme = "Moonfly (Gogh)"
config.font_size = 15
-- config.window_background_opacity = 1
config.window_close_confirmation = "NeverPrompt"
config.scrollback_lines = 3000
config.default_workspace = "main"

-- Dim inactive panes
config.inactive_pane_hsb = {
  saturation = 0.5,
  brightness = 0.5,
}

config.use_fancy_tab_bar = false
config.colors = {
  tab_bar = {
    background = "#000000",
    active_tab = {
      bg_color = "#000000",
      fg_color = "#bbbbbb",
      intensity = "Bold",
      italic = true,
    },
    inactive_tab = {
      bg_color = "#222222",
      fg_color = "#bbbbbb",
      intensity = "Half",
    },
    new_tab = {
      bg_color = "#000000",
      fg_color = "#555555"
    },
  },
}

config.window_background_opacity = 0.95

-- Keys
config.keys = {
  { key = "n",          mods = "ALT",         action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "m",          mods = "ALT",         action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
  { key = "h",          mods = "ALT",         action = act.ActivatePaneDirection("Left") },
  { key = "j",          mods = "ALT",         action = act.ActivatePaneDirection("Down") },
  { key = "k",          mods = "ALT",         action = act.ActivatePaneDirection("Up") },
  { key = "l",          mods = "ALT",         action = act.ActivatePaneDirection("Right") },
  { key = "w",          mods = "ALT",         action = act.CloseCurrentPane({ confirm = true }) },
}


config.window_frame = {
  font = wezterm.font({ family = "JetBrains Mono", weight = "Bold" }),

  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
  font_size = 12.0,
}

return config


