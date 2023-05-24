local wezterm = require("wezterm")
local colorscheme = require("colorscheme")
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

local config = {
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		left = 3,
		right = 3,
		top = 3,
		bottom = 3,
	},
	keys = {
		{
			key = "h",
			mods = "CTRL|ALT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "v",
			mods = "CTRL|ALT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "q",
			mods = "CTRL|ALT",
			action = wezterm.action.CloseCurrentPane({ confirm = true }),
		},
	},
	default_prog = { "/bin/zsh" },
}

colorscheme.apply_to_config(config)

return config
