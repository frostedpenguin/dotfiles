local awful = require('awful')
local gears = require('gears')
local wibox = require('wibox')
local dpi = require('beautiful').xresources.apply_dpi
local clickable_container = require('widget.clickable-container')
local config_dir = gears.filesystem.get_configuration_dir()
local widget_icon_dir = config_dir .. 'widget/keyboard-layout/icons/'



