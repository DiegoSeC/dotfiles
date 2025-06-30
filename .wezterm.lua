-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Frappe" -- or Macchiato, Frappe, Latte
config.hide_tab_bar_if_only_one_tab = true -- Hide the tab bar when there's only one tab

-- Finally, return the configuration to wezterm:
return config
