local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- config.color_scheme = 'Builtin Dark'
config.color_scheme = 'Builtin Tango Dark'

config.font = wezterm.font 'Terminus (TTF)'

config.leader = { key = 's', mods = 'CTRL' }
config.keys = require('core.keymaps')
config.use_fancy_tab_bar = false

return config
