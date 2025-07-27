local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

config.color_scheme = "Gruvbox Dark (Gogh)"
config.line_height = 0.8

return config
