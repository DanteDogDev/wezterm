local wezterm = require('wezterm')
local config = wezterm.config_builder()
local mux = wezterm.mux

config.color_scheme = 'Tokyo Night'
config.default_prog = { 'pwsh.exe' }

wezterm.on('gui-startup', function(window)
  local tab, pane, window = mux.spawn_window(cmd or {})
  local gui_window = window:gui_window();
  gui_window:perform_action(wezterm.action.ToggleFullScreen, pane)
end)

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 12

config.window_decorations = "NONE"

config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false


config.disable_default_key_bindings = true
config.keys = require("keybinds")


return config
