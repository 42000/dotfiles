local wezterm = require 'wezterm'
local act = wezterm.action

local M = {
  -- mods = SUPER, CTRL, SHIFT, ALT, LEADER
  { key = 'v', mods = 'CTRL|ALT', action = act.SplitHorizontal, },
  { key = 'n', mods = 'CTRL|ALT', action = act.SplitVertical, },
  { key = 'l', mods = 'CTRL|ALT', action = act.ActivatePaneDirection "Right", },
  { key = 'h', mods = 'CTRL|ALT', action = act.ActivatePaneDirection "Left", },
  { key = 'k', mods = 'CTRL|ALT', action = act.ActivatePaneDirection "Up", },
  { key = 'j', mods = 'CTRL|ALT', action = act.ActivatePaneDirection "Down", },
  { key = 't', mods = 'CTRL|ALT', action = act.SpawnTab "CurrentPaneDomain", },
  { key = '1', mods = 'CTRL|ALT', action = act.ActivateTab(0), },
  { key = '2', mods = 'CTRL|ALT', action = act.ActivateTab(1), },
  { key = '3', mods = 'CTRL|ALT', action = act.ActivateTab(2), },
  { key = '4', mods = 'CTRL|ALT', action = act.ActivateTab(3), },
  { key = '5', mods = 'CTRL|ALT', action = act.ActivateTab(4), },
  { key = '6', mods = 'CTRL|ALT', action = act.ActivateTab(5), },
  { key = '7', mods = 'CTRL|ALT', action = act.ActivateTab(6), },
  { key = '8', mods = 'CTRL|ALT', action = act.ActivateTab(7), },
  { key = '9', mods = 'CTRL|ALT', action = act.ActivateTab(8), },
  { key = '0', mods = 'CTRL|ALT', action = act.ActivateTab(9), },
  { key = 'F9', mods = 'ALT', action = act.ShowTabNavigator },
  { key = 'h', mods = 'CTRL|SHIFT|ALT', action = act.AdjustPaneSize {'Left', 3} },
  { key = 'j', mods = 'CTRL|SHIFT|ALT', action = act.AdjustPaneSize {'Down', 2} },
  { key = 'k', mods = 'CTRL|SHIFT|ALT', action = act.AdjustPaneSize {'Up', 2} },
  { key = 'l', mods = 'CTRL|SHIFT|ALT', action = act.AdjustPaneSize {'Right', 3} },
  { key = 'z', mods = 'CTRL|ALT', action = act.TogglePaneZoomState},
  { key = '[', mods = 'LEADER', action = act.ActivateCopyMode},
  { key = ':', mods = 'LEADER', action = act.ActivateCommandPalette},
  { key = 'PageUp', mods = 'SHIFT', action = act.ScrollByPage(-1), },
  { key = 'PageDown', mods = 'SHIFT', action = act.ScrollByPage(1), },
  { key = 'F11', mods = '', action = act.ToggleFullScreen, },
  -- { key = 'c', mods = 'CTRL|ALT', action = act.SpawnWindow, },
  -- { key = 'Space', mods = 'CTRL|SHIFT', action = act.QuickSelect},
}

return M
