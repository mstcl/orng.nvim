local lush = require("lush")
local hsluv = lush.hsluv

local bg = hsluv(0, 0, 4)

local fg = hsluv(0, 0, 80)

local accent = hsluv(20, 89, 58) -- #EC5B2B
local accent2 = hsluv(25, 78, 64) -- #EE7948
local cream = hsluv(49, 100, 98) -- #FFF7F1

local red = hsluv(9, 63, 60) -- #E06C75
local blue = hsluv(249, 73, 65) -- #6BA1E6
local cyan = hsluv(205, 77, 69) -- #56B6C2
local yellow = hsluv(60, 61, 79) -- #E5C07B

local palette = {
	accent = accent,
	accent2 = accent2,
	cream = cream,

	bg0 = bg,
	bg1 = bg.abs_li(3),
	bg2 = bg.abs_li(7),
	bg3 = bg.abs_da(2),

	fg0 = fg,
	fg1 = fg.abs_da(12),
	fg2 = fg.abs_da(24),
	fg3 = fg.abs_da(34),
	fg4 = fg.abs_da(44),
	fg5 = fg.abs_da(54),

	red = red,
	green = blue,
	yellow = yellow,
	blue = blue,
	magenta = accent2,
	cyan = cyan,

	strfg = hsluv(249, 35, 60), -- #6BA1E6
	visbg = hsluv(247, 52, 11), -- #141E2B

	addbg = hsluv(247, 60, 17),
	modbg = hsluv(245, 60, 14),
	delbg = hsluv(340, 28, 16),

	addfg = blue,
	modfg = accent2,
	delfg = hsluv(6, 71, 46), -- #C53B53

	warningbg = hsluv(30, 55, 14),
	infobg = hsluv(205, 45, 15),
	hintbg = hsluv(247, 55, 15),
	errorbg = hsluv(340, 40, 15),
}

return palette
