---@diagnostic disable: undefined-global
local lush = require("lush")
local theme = lush.merge({
	require("orng.base"),
	require("orng.statusline"),
	require("orng.mini"),
	require("orng.extras"),
})

return theme
