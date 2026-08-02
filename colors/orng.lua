vim.opt.background = "dark"
vim.g.colors_name = "orng"

for _, mod in ipairs({
	"orng",
	"orng.palette",
	"orng.base",
	"orng.statusline",
	"orng.mini",
	"orng.extras",
}) do
	package.loaded[mod] = nil
end

local palette = require("orng.palette")
require("lush")(require("orng"))

local p = function(c)
	return tostring(c)
end
local term = {
	[0] = p(palette.bg0),
	[1] = p(palette.accent),
	[2] = p(palette.blue),
	[3] = p(palette.yellow),
	[4] = p(palette.blue),
	[5] = p(palette.accent2),
	[6] = p(palette.cyan),
	[7] = p(palette.fg1),
	[8] = p(palette.fg5),
	[9] = p(palette.accent),
	[10] = p(palette.blue),
	[11] = p(palette.yellow),
	[12] = p(palette.accent),
	[13] = p(palette.accent2),
	[14] = p(palette.cyan),
	[15] = p(palette.cream),
}
for i = 0, 15 do
	vim.g["terminal_color_" .. i] = term[i]
end
