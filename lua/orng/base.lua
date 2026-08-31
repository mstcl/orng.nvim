local lush = require("lush")
local palette = require("orng.palette")

---@diagnostic disable: undefined-global
-- selene: allow(undefined_variable)
-- stylua: ignore start
local spec = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		Normal { bg = palette.bg0, fg = palette.fg0 },
		Terminal { bg = Normal.bg, fg = Normal.fg },
		TermCursor { gui = "reverse" },

		StatusLine { fg = palette.fg2 },
		StatusLineNC { fg = palette.fg2 },
		StatusLineTermNC { StatusLineNC },
		StatusLineTerm { StatusLine },
		MsgSeparator { StatusLine },
		MsgArea { StatusLine },

		VertSplit { bg = Normal.bg, fg = palette.bg1 },
		WinSeparator { VertSplit },

		CursorLine { bg = palette.bg2 },
		CursorLineNr { fg = palette.fg1 },
		CursorLineFold {},
		CursorLineSign {},

		LineNr { fg = palette.fg5 },
		QuickFixLine { bg = CursorLine.bg },
		CursorColumn { bg = CursorLine.bg },
		ColorColumn { bg = palette.bg1 },
		SignColumn {},

		TabLine { bg = palette.bg0, fg = palette.fg5 },
		TabLineSel { bg = palette.bg0, fg = palette.fg2 },
		TabLineFill { bg = TabLine.bg },

		WinBar { bg = palette.bg0 },
		WinBarNC { WinBar, fg = palette.fg2 },

		Folded { bg = palette.bg1 , fg = palette.fg5 },
		FoldColumn { fg = Folded.fg, gui = "bold" },

		Pmenu { bg = palette.bg2, fg = palette.fg1 },
		PmenuSel { bg = palette.bg3, fg = palette.fg1, gui = "bold" },
		PmenuSbar { bg = palette.bg1, fg = PmenuSel.bg },
		PmenuThumb { bg = PmenuSel.bg, fg = PmenuSel.bg },
		PmenuKind { Pmenu },
		PmenuExtra { Pmenu },
		PmenuKindSel { PmenuSel },
		PmenuExtraSel { PmenuSel },
		WildMenu { PmenuSel },

		InfoMsg { fg = palette.blue },
		HintMsg { fg = palette.magenta },
		ErrorMsg { fg = palette.accent },
		WarningMsg { fg = palette.yellow },
		MoreMsg { fg = palette.fg4 },
		ModeMsg { WarningMsg },
		Warning { bg = palette.warningbg, fg = palette.yellow },
		WarningSigns { bg = palette.warningbg, fg = palette.yellow },
		Info { bg = palette.infobg, fg = palette.blue },
		Hint { bg = palette.hintbg, fg = palette.magenta },
		Error { bg = palette.errorbg, fg = palette.accent },
		Question { fg = palette.fg1 },
		Debug { WarningMsg },

		DiffAdd { bg = palette.addbg },
		DiffChange { bg = palette.modbg },
		DiffDelete { bg = palette.delbg },
		DiffText { bg = palette.bg2 },
		DiffTextAdded { fg = palette.addfg },
		DiffTextChanged { fg = palette.modfg },
		DiffTextRemoved { fg = palette.delfg },
		Todo { bg = palette.addbg, fg = palette.strfg },

		Underlined { fg = palette.yellow, sp = palette.yellow, gui = "underline" },
		Tag { Underlined },

		NonText { fg = palette.bg2 },
		EndOfBuffer { NonText },
		Whitespace { NonText },
		Ignore { NonText },

		Delimiter { fg = palette.fg4 },
		Conceal { Delimiter },
		Noise { Delimiter },

		SpellCap { sp = palette.magenta, gui = "undercurl" },
		SpellRare { sp = palette.blue, gui = "undercurl" },
		SpellLocal { sp = palette.yellow, gui = "undercurl" },
		SpellBad { sp = palette.accent, gui = "undercurl" },

		Function { fg = palette.cream, gui = "bold" },
		Identifier { fg = Normal.fg },

		String { fg = palette.strfg },
		Define { fg = palette.cream, gui = "bold" },
		Character { fg = String.fg },
		SpecialKey { Character },

		SpecialComment { fg = palette.fg2, gui = "bold" },

		Keyword { fg = palette.fg2 },

		Comment { fg = palette.fg4 },
		Operator { fg = palette.fg4 },
		Title { gui = "bold" },

		Number { fg = palette.red },
		Float { Number },
		Type { fg=  palette.accent },
		Label { fg = Number.accent, gui = "bold" },
		Exception { fg = palette.fg2 },
		Include { fg = palette.fg4 },

		Statement { fg = palette.fg2 },
		Repeat { Statement },
		SpecialChar { fg = palette.fg2 },
		Conditional { fg = palette.fg2 },
		PreCondit { fg = palette.accent },
		Typedef { fg = palette.accent },

		Constant { fg = palette.blue },
		Boolean { fg = palette.blue },
		StorageClass { fg = palette.cream, gui = "bold" },
		Directory { StorageClass },
		Structure { StorageClass },

		Macro { fg = palette.blue },

		PreProc { fg = palette.accent },

		Special { fg = palette.accent, gui = "bold" },

		NormalFloat { bg = Normal.bg, fg = palette.fg1 },
		FloatBorder { bg = Normal.bg, fg = palette.bg2 },
		FloatTitle { bg = Normal.fg, fg = palette.bg2, gui = "bold" },
		FloatFooter { fg = palette.fg1, gui = "bold" },
		FloatShadow { bg = "black", blend = 80 },
		FloatShadowThrough { bg = "black", blend = 100 },

		Cursor { gui = "reverse" },
		MatchParen { bg = palette.errorbg, fg = palette.accent },
		Search { bg = palette.warningbg, fg = palette.yellow },
		Substitute { Search },
		CurSearch { bg = palette.yellow, fg = palette.bg1 },
		IncSearch { CurSearch },

		Visual { bg = palette.visbg },
		VisualNOS { Visual },

		RedrawDebugNormal { gui = "reverse" },
		RedrawDebugClear { bg = "yellow" },
		RedrawDebugComposed { bg = "green" },
		RedrawDebugRecompose { bg = "red" },

		Red { fg = palette.red },
		Green { fg = palette.green },
		Yellow { fg = palette.yellow },
		Blue { fg = palette.blue },
		Magenta { fg = palette.magenta },
		Cyan { fg = palette.cyan },

		-- treesitter syntax
		-- identifiers
		sym("@variable") { Identifier },
		sym("@variable.builtin") { Constant },
		sym("@variable.parameter") { fg = palette.fg1 },
		sym("@variable.member") { fg = palette.fg1 },

		sym("@constant") { Constant },
		sym("@constant.builtin") { Conditional },
		sym("@constant.macro") { Macro },

		sym("@module") { fg = palette.fg1 },
		sym("@module.builtin") { Directory },
		sym("@label") { fg = palette.red },

		-- miscellaneous syntax
		sym("@error") { sp = palette.delfg, gui = "undercurl", fg = "#7c4034" },
		sym("@define") { Define },
		sym("@macro") { Macro },

		-- literals
		sym("@string") { String },
		sym("@string.documentation") { fg = palette.fg2 },
		sym("@string.regexp") { fg = palette.green },
		sym("@string.escape") { fg = palette.blue },
		sym("@string.special") { SpecialChar },
		sym("@string.special.symbol") { Special },
		sym("@string.special.url") { fg = palette.green, gui = "underline" },
		sym("@string.special.uri") { sym("@string.special.url") },

		sym("@character") { Character },
		sym("@character.printf") { fg = palette.accent, gui = "bold" },

		sym("@boolean") { Boolean },
		sym("@number") { Number },
		sym("@number.float") { Float },

		-- types
		sym("@type") {},
		sym("@type.definition") { Define },
		sym("@type.builtin") {},

		sym("@attribute") { fg = palette.fg0 },
		sym("@attribute.builtin") { sym("@attribute") },

		sym("@property") { fg = palette.fg1 },

		-- function
		sym("@function") { fg = Function.fg },
		sym("@function.call") {},
		sym("@function.macro") { Macro },
		sym("@function.method") { Function },
		sym("@function.method.call") { sym("@function.call") },
		sym("@function.builtin") {},

		sym("@operator") { Operator },
		sym("@constructor") { fg = palette.fg0 },

		-- keyword
		sym("@keyword") { Keyword },
		sym("@keyword.coroutine") { fg = Keyword.fg, gui = "bold" },
		sym("@keyword.function") { sym("@keyword") },
		sym("@keyword.operator") { sym("@operator") },
		sym("@keyword.import") { sym("@operator") },
		sym("@keyword.type") { sym("@keyword") },
		sym("@keyword.modifier") { sym("@keyword") },
		sym("@keyword.repeat") { sym("@keyword") },
		sym("@keyword.return") { sym("@keyword") },
		sym("@keyword.debug") { Debug },
		sym("@keyword.exception") { sym("@keyword") },
		sym("@keyword.conditional") { sym("@keyword") },
		sym("@keyword.storage") { fg = palette.fg2 },
		sym("@keyword.directive") { fg = PreProc.fg },

		-- punctuation
		sym("@punctuation") { Delimiter },
		sym("@punctuation.special") { Delimiter },
		sym("@punctuation.delimiter") { Delimiter },
		sym("@punctuation.bracket") { Conceal },

		-- comment
		sym("@comment") {  fg = palette.yellow },
		sym("@comment.documentation") { sym("@comment") },
		sym("@comment.todo") { Todo },
		sym("@comment.error") { fg = Error.fg, bg = Error.bg },
		sym("@comment.warning") { fg = Warning.fg, bg = Warning.bg },
		sym("@comment.hint") { fg = Hint.fg, bg = Hint.bg },
		sym("@comment.info") { fg = Info.fg, bg = Info.bg },
		sym("@comment.note") { fg = Info.fg, bg = Info.bg },
		sym("@comment.ok") { fg = Info.fg, bg = Info.bg },
		sym("@comment.gitcommit") { Comment },

		-- org
		sym("@org.headline.level6") { gui = "bold", fg = palette.cyan },
		sym("@org.headline.level5") { gui = "bold", fg = palette.magenta },
		sym("@org.headline.level4") { gui = "bold", fg = palette.blue },
		sym("@org.headline.level3") { gui = "bold", fg = palette.yellow },
		sym("@org.headline.level2") { gui = "bold", fg = palette.green },
		sym("@org.headline.level1") { gui = "bold", fg = palette.red },
		sym("@org.keyword.done") { bg = palette.addbg, fg = palette.green },
		sym("@org.keyword.todo") { bg = palette.modbg, fg = palette.magenta },
		sym("@org.agenda.scheduled") { Directory },
		sym("@org.agenda.deadline") { Conceal },

		-- markup link
		sym("@markup.link.markdown_inline") { fg = palette.cyan },
		sym("@markup.link.label") { fg = palette.blue },
		sym("@markup.link.url") { fg = palette.green, gui = "underline" },

		-- markup list
		sym("@markup.list") { fg = palette.fg2 },  -- list markers
		sym("@markup.list.checked.markdown") { fg = palette.fg4 },
		sym("@markup.list.unchecked.markdown") { fg = palette.fg4 },

		-- markup miscellaneous
		sym("@markup.underline") { Underlined },
		sym("@markup.reference") { fg = palette.magenta },
		sym("@markup.strong") { gui = "bold" },
		sym("@markup.quote") { fg = palette.fg2, gui = "italic" },
		sym("@markup.italic") { gui = "italic" },
		sym("@markup.strikethrough") { fg = palette.fg1, gui = "strikethrough" },
		sym("@markup.math") { Number },

		-- markup raw
		sym("@markup.raw") { bg = palette.bg1, fg = palette.fg1 },
		sym("@markup.raw.block") {},

		-- markup heading
		sym("@markup.heading") { sp = palette.delfg, gui = "bold", fg = "#7c4034" },
		sym("@markup.heading.6.marker") { Delimiter },
		sym("@markup.heading.5.marker") { Delimiter },
		sym("@markup.heading.4.marker") { Delimiter },
		sym("@markup.heading.3.marker") { Delimiter },
		sym("@markup.heading.2.marker") { Delimiter },
		sym("@markup.heading.1.marker") { Delimiter },
		sym("@markup.heading.6") { fg = Normal.fg, gui = "bold" },
		sym("@markup.heading.5") { fg = Normal.fg, gui = "bold" },
		sym("@markup.heading.4") { fg = Normal.fg, gui = "bold" },
		sym("@markup.heading.3") { fg = Normal.fg, gui = "bold" },
		sym("@markup.heading.2") { fg = Normal.fg, gui = "bold" },
		sym("@markup.heading.1") { fg = Normal.fg, gui = "bold" },

		-- diff
		sym("@diff.plus") { DiffTextAdded },
		sym("@diff.minus") { DiffTextRemoved },
		sym("@diff.delta") { DiffTextChanged },

		-- tags
		sym("@tag") { fg = palette.red },
		sym("@tag.builtin") { sym("@tag") },
		sym("@tag.attribute") { fg = palette.cyan },
		sym("@tag.delimiter") { fg = palette.fg2 },

		-- yaml
		sym("@string.yaml") { fg = palette.fg1 },
		sym("@string.lua") { fg = String.fg },
		sym("@punctuation.delimiter.yaml") { Delimiter },

		-- lua
		sym("@variable.member.lua") { fg = palette.green },
		sym("@constructor.lua") { Delimiter },

		-- terraform
		sym("@none.terraform") { Delimiter },
		sym("@keyword.repeat.terraform") { fg = sym("@keyword.repeat").fg, gui = "italic" },

		-- semantic tokens
		sym("@lsp.type.namespace") { fg = sym("@module").fg, gui = "bold" },
		sym("@lsp.type.type") { sym("@type") },
		sym("@lsp.type.class") { sym("@type") },
		sym("@lsp.type.enum") { sym("@keyword.type") },
		sym("@lsp.type.interface") { sym("@type") },
		sym("@lsp.type.struct") { sym("@type") },
		sym("@lsp.type.typeParameter") {},
		sym("@lsp.type.parameter") { sym("@variable.parameter") },
		sym("@lsp.type.variable") {},
		sym("@lsp.type.property") { sym("@property") },
		sym("@lsp.type.enumMember") { Constant },
		sym("@lsp.type.event") { sym("@type") },
		sym("@lsp.type.function") {},
		sym("@lsp.type.method") {},
		sym("@lsp.type.macro") { sym("@constant.macro") },
		sym("@lsp.type.keyword") { sym("@keyword") },
		sym("@lsp.type.comment") { sym("@comment") },
		sym("@lsp.type.string") { sym("@string") },
		sym("@lsp.type.number") { sym("@number") },
		sym("@lsp.type.regexp") { sym("@string.regexp") },
		sym("@lsp.type.operator") { sym("@operator") },
		sym("@lsp.type.decorator") { sym("@attribute") },
		sym("@lsp.type.escapeSequence") { sym("@string.escape") },
		sym("@lsp.type.formatSpecifier") { fg = palette.yellow },
		sym("@lsp.type.builtinType") { sym("@type.builtin") },
		sym("@lsp.type.builtinConstant") { sym("@variable.builtin") },
		sym("@lsp.type.typeAlias") { sym("@type.definition") },
		sym("@lsp.type.unresolvedReference") { gui = 'undercurl', sp = palette.accent },
		sym("@lsp.type.lifetime") { sym("@keyword.modifier") },
		sym("@lsp.type.generic") { sym("@variable") },
		sym("@lsp.type.selfKeyword") { sym("@variable.builtin") },
		sym("@lsp.type.selfTypeKeyword") { sym("@variable.builtin") },
		sym("@lsp.type.deriveHelper") { sym("@attribute") },
		sym("@lsp.type.modifier") { sym("@keyword.modifier") },
		sym("@lsp.typemod.type.defaultLibrary") { sym("@type.builtin") },
		sym("@lsp.typemod.typeAlias.defaultLibrary") { sym("@type.builtin") },
		sym("@lsp.typemod.class.defaultLibrary") { sym("@type.builtin") },
		sym("@lsp.typemod.variable.defaultLibrary") { sym("@variable.builtin") },
		sym("@lsp.typemod.function.defaultLibrary") { sym("@function.builtin") },
		sym("@lsp.typemod.method.defaultLibrary") { sym("@function.builtin") },
		sym("@lsp.typemod.macro.defaultLibrary") { sym("@function.builtin") },
		sym("@lsp.typemod.struct.defaultLibrary") { sym("@type.builtin") },
		sym("@lsp.typemod.enum.defaultLibrary") { sym("@type.builtin") },
		sym("@lsp.typemod.enumMember.defaultLibrary") { sym("@constant.builtin") },
		sym("@lsp.typemod.variable.readonly") {},
		sym("@lsp.typemod.variable.callable") { sym("@function") },
		sym("@lsp.typemod.variable.static") {},
		sym("@lsp.typemod.property.readonly") { fg = palette.fg2 },
		sym("@lsp.typemod.keyword.async") { sym("@keyword.coroutine") },
		sym("@lsp.typemod.keyword.injected") { sym("@keyword") },
		sym("@lsp.typemod.operator.injected") { sym("@operator") },
		sym("@lsp.typemod.string.injected") { sym("@string") },
		sym("@lsp.typemod.variable.injected") { sym("@variable") },
		sym("@lsp.typemod.function.definition") { Function },
		sym("@lsp.typemod.variable.definition") { fg = palette.accent2 },
		sym("@lsp.typemod.parameter.definition") { fg = palette.accent2 },

		sym("@lsp.type.keyword") {},
		sym("@lsp.type.string") {},
		sym("@lsp.type.comment") {},

		sym("@lsp.mod.documentation") { sym("@comment.documentation") },

		-- lua
		sym("@lsp.type.keyword.lua") {},
		sym("@lsp.mod.static.lua") { gui = "bold" },
		sym("@lsp.type.string.lua") { sym("@string.lua") },
		sym("@lsp.type.class.lua") { Function },

		-- golang
		sym("@lsp.type.keyword.go") {},
		sym("@lsp.type.string.go") {},
		sym("@lsp.type.comment.go") {},

		-- ansible
		sym("@lsp.type.keyword.yaml.ansible") { fg = Normal.fg, gui = "bold" },
		sym("@lsp.type.class.yaml.ansible") { fg = palette.red, gui="bold" },
		sym("@lsp.type.property.yaml.ansible") { fg = Normal.fg, gui = "bold" },
		sym("@lsp.type.method.yaml.ansible") { fg = palette.fg2, gui = "bold"},

		-- terraform
		sym("@lsp.type.property.terraform") { fg = Normal.fg, gui = "none" },
		sym("@lsp.type.enumMember.terraform") { fg = Normal.fg, gui = "bold" },
		sym("@lsp.type.type.terraform") { fg = palette.fg2, gui = "bold" },
		sym("@lsp.typemod.enumMember.defaultLibrary.terraform") { fg = palette.red, gui = "bold" },

		-- diagnostic
		DiagnosticSignWarn { WarningMsg },
		DiagnosticSignInfo { InfoMsg },
		DiagnosticSignHint { HintMsg },
		DiagnosticSignError { ErrorMsg },
		DiagnosticSignOk { MsgArea },
		DiagnosticUnnecessary { sp = palette.fg2, gui = "underdotted" },

		DiagnosticFloatingWarn { WarningMsg },
		DiagnosticFloatingInfo { InfoMsg },
		DiagnosticFloatingHint { HintMsg },
		DiagnosticFloatingError { ErrorMsg },
		DiagnosticFloatingOk { MoreMsg },

		DiagnosticUnderlineWarn { SpellLocal },
		DiagnosticUnderlineInfo { SpellRare },
		DiagnosticUnderlineHint { SpellCap },
		DiagnosticUnderlineError { SpellBad },
		DiagnosticUnderlineOk { sp = palette.green, gui = "undercurl" },

		DiagnosticWarn { WarningMsg },
		DiagnosticInfo { InfoMsg },
		DiagnosticHint { HintMsg },
		DiagnosticError { ErrorMsg },
		DiagnosticOk { MoreMsg },

		DiagnosticVirtualTextWarn { WarningMsg },
		DiagnosticVirtualTextInfo { InfoMsg },
		DiagnosticVirtualTextHint { HintMsg },
		DiagnosticVirtualTextError { ErrorMsg },
		DiagnosticVirtualTextOk { MoreMsg },

		DiagnosticVirtualLinesWarn { WarningMsg },
		DiagnosticVirtualLinesInfo { InfoMsg },
		DiagnosticVirtualLinesHint { HintMsg },
		DiagnosticVirtualLinesError { ErrorMsg },
		DiagnosticVirtualLinesOk { MoreMsg },

		-- lsp extras
		LspInfoFiletype {},
		LspInfoTitle {},
		LspInfoTip {},
		LspInfoList {},
		LspInfoBorder {},
		LspInlayHint { bg = palette.bg2, fg = palette.fg4},
		LspCodeLens { fg =  palette.fg4},
		LspSignatureActiveParameter { gui = "bold" },
	}
end)

return spec
