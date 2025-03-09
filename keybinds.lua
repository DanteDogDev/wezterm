local wezterm = require("wezterm")
return {
	-- modify current font size
	{ key = "-", mods = "CTRL", action = wezterm.action.DecreaseFontSize },
	{ key = "=", mods = "CTRL", action = wezterm.action.IncreaseFontSize },
	-- create / delete tabs
	{ key = "n", mods = "ALT | SHIFT", action = wezterm.action.SpawnTab("DefaultDomain") },
	{ key = "d", mods = "ALT | SHIFT", action = wezterm.action({ CloseCurrentPane = { confirm = false } }), },
	-- Moving between current tabs
	{ key = "1", mods = "ALT", action = wezterm.action({ ActivateTab = 0 }) },
	{ key = "2", mods = "ALT", action = wezterm.action({ ActivateTab = 1 }) },
	{ key = "3", mods = "ALT", action = wezterm.action({ ActivateTab = 2 }) },
	{ key = "4", mods = "ALT", action = wezterm.action({ ActivateTab = 3 }) },
	{ key = "5", mods = "ALT", action = wezterm.action({ ActivateTab = 4 }) },
	{ key = "6", mods = "ALT", action = wezterm.action({ ActivateTab = 5 }) },
	{ key = "7", mods = "ALT", action = wezterm.action({ ActivateTab = 6 }) },
	{ key = "8", mods = "ALT", action = wezterm.action({ ActivateTab = 7 }) },
	{ key = "9", mods = "ALT", action = wezterm.action({ ActivateTab = 8 }) },
  -- Tmux panes
  { key = 'Enter', mods = 'ALT | SHIFT', action = wezterm.action.ToggleFullScreen, },
  { key = 'LeftArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Left', },
  { key = 'RightArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Right', },
  { key = 'UpArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Up', },
  { key = 'DownArrow', mods = 'ALT', action = wezterm.action.ActivatePaneDirection 'Down', },
  { key = 'w', mods = 'ALT | SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }, },
  { key = 'v', mods = 'ALT | SHIFT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }, },
}
