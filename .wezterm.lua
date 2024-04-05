-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "AdventureTime"

config.keys = {
	{
		key = "LeftArrow",
		mods = "CMD",
		-- \x1b is the escape char
		action = act.SendKey({
			key = "0",
		}),
	},
	{
		key = "RightArrow",
		mods = "CMD",
		-- \x1b is the escape char
		action = act.SendKey({
			key = "$",
		}),
	},
}

-- and finally, return the configuration to wezterm
return config
