-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Frappe" -- or Macchiato, Frappe, Latte

-- Finally, return the configuration to wezterm:
return config
