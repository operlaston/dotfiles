local wezterm = require("wezterm")
local act = wezterm.action
local scheme = "Moonfly (Gogh)"
local scheme_def = wezterm.color.get_builtin_schemes()[scheme]

local config = {}
-- Use config builder object if possible
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config.enable_wayland = false

-- Spawn a fish shell in login mode
config.default_prog = { "/usr/bin/fish", "-l" }
config.color_scheme = scheme
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
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

config.colors = {
  tab_bar = {
    background = "transparent",
    active_tab = {
      bg_color = "transparent",
      fg_color = scheme_def.foreground,
      intensity = "Bold",
      italic = true,
    },
    inactive_tab = {
      bg_color = "transparent",
      fg_color = scheme_def.foreground,
      intensity = "Half",
    },
    new_tab = {
      bg_color = "transparent",
      fg_color = scheme_def.foreground,
    },
  },
}

config.window_background_opacity = 0.9

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
}

return config


