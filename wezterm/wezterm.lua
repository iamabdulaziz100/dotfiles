-- Import the WezTerm module
local wezterm = require("wezterm")

-- Import the local colors module
local colors = require("colors")

-- Return a configuration table for WezTerm
return {
	-- Color Scheme
	-- color_scheme = "Catppuccin Mocha",
	-- colors = colors.doom,
  colors = colors.gnome,
	-- color_scheme = "termnial.sexy",

	-- Font Settings
	font_size = 15.0,
	font = wezterm.font("FiraCode Nerd Font"),

	-- Window Settings
	enable_tab_bar = false,
	window_background_opacity = 1.0,
	-- window_background_opacity = 0.92,
	-- window_background_opacity = 0.78,
	-- window_background_opacity = 0.20,
	-- window_decorations = "RESIZE",
	-- window_padding = {
	-- 	left = 0,
	-- 	right = 0,
	-- 	top = 0,
	-- 	bottom = 0,
	-- },
	-- Uncomment to set a background image
	-- window_background_image = '/Users/omerhamerman/Downloads/3840x1080-Wallpaper-041.jpg',
	-- window_background_image_hsb = {
	-- 	brightness = 0.01,
	-- 	hue = 1.0,
	-- 	saturation = 0.5,
	-- },

	-- Key Bindings
	keys = {
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
		{
			key = "'",
			mods = "CTRL",
			action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
		},
	},

	-- Mouse Bindings
	mouse_bindings = {
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},

	-- Confirmation on Exit
	window_close_confirmation = "NeverPrompt",
}
