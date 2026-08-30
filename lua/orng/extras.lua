local lush = require("lush")
local base = require("orng.base")
local palette = require("orng.palette")

---@diagnostic disable: undefined-global
-- selene: allow(undefined_variable)
-- stylua: ignore start
local spec = lush(function()
	return {
		-- aerial.nvim
		AerialConstantIcon { base.Constant },
		AerialNamespaceIcon { base.Directory },
		AerialNormal { fg = palette.fg3 },
		AerialLine { fg = base.Normal.fg, gui = "bold" },
		AerialLineNC { AerialNormal },
		AerialStringIcon { base.String },
		AerialVariableIcon { base.Identifier },
		AerialFunctionIcon { base.Boolean },
		AerialBooleanIcon { base.Boolean },
		AerialMethodIcon { base.Boolean },

		-- codediff.nvim
		CodeDiffHistoryTitle { fg = palette.fg4, gui = "bold" },

		-- nvim-cmp
		CmpWindowScrollThumb { fg = palette.fg4 },
		CmpItemMenu { fg = palette.fg4 },

		CmpItemAbbr { fg = palette.fg3 },
		CmpItemAbbrMatch { fg = Normal.fg, gui = "bold" },
		CmpItemAbbrDeprecated { fg = palette.fg3 , gui = "strikethrough" },
		CmpItemAbbrDeprecatedDefault { fg = palette.fg4 },
		CmpItemMenuDefault { fg = palette.fg3 },
		CmpItemKindDefault { fg = palette.blue },
		CmpItemAbbrMatchFuzzy { fg = palette.blue },

		CmpItemKindFunction { bg = palette.red, fg = palette.bg2 },
		CmpItemKindMethod { CmpItemKindFunction },
		CmpItemKindUnit { CmpItemKindFunction },
		CmpItemKindConstructor { CmpItemKindFunction },
		CmpItemKindEnum { CmpItemKindFunction },
		CmpItemKindField { CmpItemKindFunction },
		CmpItemKindOperator { CmpItemKindFunction },
		CmpItemKindReference { CmpItemKindFunction },
		CmpItemKindTypeParameter { CmpItemKindFunction },

		CmpItemKindInterface { bg = palette.red, fg = palette.bg2 },
		CmpItemKindKeyword { CmpItemKindInterface },
		CmpItemKindColor { CmpItemKindInterface },
		CmpItemKindEnumMember { CmpItemKindInterface },
		CmpItemKindFolder { CmpItemKindInterface },
		CmpItemKindSnippet { CmpItemKindInterface },

		CmpItemKindVariable { bg = palette.blue, fg = palette.bg2 },
		CmpItemKindClass { CmpItemKindVariable },
		CmpItemKindFile { CmpItemKindVariable },
		CmpItemKindValue { CmpItemKindVariable },

		CmpItemKindText { bg = palette.magenta, fg = palette.bg2 },
		CmpItemKindConstant { CmpItemKindText },
		CmpItemKindModule { CmpItemKindText },

		CmpItemKindProperty { bg = palette.green, fg = palette.bg2 },
		CmpItemKindEvent { CmpItemKindProperty },
		CmpItemKindStruct { CmpItemKindProperty },

		CmpItemAbbrDefault { fg = palette.fg3 },
		CmpItemAbbrMatchDefault { fg = palette.fg1 },
		CmpItemAbbrMatchFuzzyDefault { fg = palette.fg1 },

		CmpItemKind { bg = palette.cyan, fg = palette.bg2 },
		CmpItemKindConstructorDefault { CmpItemKind },
		CmpItemKindModuleDefault { CmpItemKind },
		CmpItemKindMethodDefault { CmpItemKind },
		CmpItemKindKeywordDefault { CmpItemKind },
		CmpItemKindClassDefault { CmpItemKind },
		CmpItemKindInterfaceDefault { CmpItemKind },
		CmpItemKindFunctionDefault { CmpItemKind },
		CmpItemKindFolderDefault { CmpItemKind },
		CmpItemKindFileDefault { CmpItemKind },
		CmpItemKindValueDefault { CmpItemKind },
		CmpItemKindStructDefault { CmpItemKind },
		CmpItemKindEventDefault { CmpItemKind },
		CmpItemKindEnumDefault { CmpItemKind },
		CmpItemKindEnumMemberDefault { CmpItemKind },
		CmpItemKindSnippetDefault { CmpItemKind },
		CmpItemKindReferenceDefault { CmpItemKind },
		CmpItemKindTypeParameterDefault { CmpItemKind },
		CmpItemKindConstantDefault { CmpItemKind },
		CmpItemKindVariableDefault { CmpItemKind },
		CmpItemKindUnitDefault { CmpItemKind },
		CmpItemKindPropertyDefault { CmpItemKind },
		CmpItemKindOperatorDefault { CmpItemKind },
		CmpItemKindTextDefault { CmpItemKind },
		CmpItemKindFieldDefault { CmpItemKind },
		CmpItemKindColorDefault { CmpItemKind },

		CmpBorder { bg = base.Normal.bg, fg = palette.fg4 },
		CmpDocumentation { bg = palette.bg2 },
		CmpDocumentationBorder { bg = CmpDocumentation.bg, fg = CmpDocumentation.bg },

		-- blink.cmp
		BlinkCmpGhostText { base.Comment },
		BlinkCmpSignatureHelpBorder { base.FloatBorder },
		BlinkCmpDocBorder { base.FloatBorder },

		-- gitsigns.nvim
		GitSignsAdd { base.DiffTextAdded },
		GitSignsChange { base.DiffTextChanged },
		GitSignsDelete { base.DiffTextRemoved },
		GitSignsCurrentLineBlame { base.LineNr },

		-- neogit
		NeogitHunkHeaderCursor { bg = palette.bg1, fg = palette.accent, gui = "bold" },
		NeogitHunkHeaderHighlight { NeogitHunkHeaderCursor },
		NeogitHunkHeader { bg = palette.bg2, fg = palette.fg4 },

		NeogitSectionHeader { fg = palette.yellow, gui = "bold" },
		NeogitCursorLine { base.CursorLine },

		NeogitDiffContextHighlight { bg = NeogitHunkHeaderCursor.bg },
		NeogitDiffContextCursor { bg = NeogitHunkHeaderCursor.bg },
		NeogitDiffHeader { fg = NeogitHunkHeaderCursor.bg, bg = palette.blue, gui = "bold" },
		NeogitDiffAdd { base.DiffAdd },
		NeogitDiffContext { bg = base.Normal.bg },

		NeogitBranch { base.Directory },
		NeogitBranchHead { fg = palette.accent, gui = "bold,underline" },

		NeogitPopupOptionKey { fg = palette.accent },
		NeogitPopupOptionEnabled { fg = palette.accent, gui = "bold" },
		NeogitPopupOptionDisabled { fg = palette.fg4 },
		NeogitPopupConfigKey { NeogitPopupOptionKey },
		NeogitPopupConfigEnabled { NeogitPopupOptionEnabled },
		NeogitPopupConfigDisabled { NeogitPopupOptionDisabled },
		NeogitPopupActionKey { NeogitPopupOptionKey },
		NeogitPopupActionDisabled { NeogitPopupOptionDisabled },
		NeogitPopupSwitchKey { NeogitPopupOptionKey },
		NeogitPopupSwitchEnabled { NeogitPopupOptionEnabled },
		NeogitPopupSwitchDisabled { NeogitPopupOptionDisabled },

		NeogitFloatBorder { base.FloatBorder },

		-- oil
		OilDir { fg = palette.fg2 },
		OilHidden { fg = palette.fg4 },

		-- render-markdown.nvim
		RenderMarkdownH1 { base.Function },
		RenderMarkdownH2 { base.Function },
		RenderMarkdownH3 { base.Function },
		RenderMarkdownH4 { base.Function },
		RenderMarkdownH5 { base.Function },
		RenderMarkdownH6 { base.Function },
		RenderMarkdownUnchecked { base.Delimiter },
		RenderMarkdownChecked { base.Delimiter },
		RenderMarkdownTodo { base.Delimiter },

		-- fzf-lua
		FzfLuaLivePrompt { fg = palette.blue },
		FzfLuaTitleFlags { bg = palette.red, fg = palette.bg1, gui = "bold" },

		-- telescope
		TelescopeTitle { bg = palette.accent, fg = palette.bg1, gui = "bold" },
		TelescopePreviewTitle { bg = base.Normal.fg, fg = TelescopeTitle.fg, gui = "bold" },
		TelescopeResultsTitle { bg = palette.green, fg = palette.bg2, gui = "bold" },
		TelescopePromptTitle { bg = palette.accent, fg = TelescopeResultsTitle.fg, gui = "bold" },

		TelescopeNormal { base.NormalFloat },
		TelescopePreviewNormal { base.NormalFloat },
		TelescopePromptNormal { base.NormalFloat },

		TelescopePromptPrefix { fg = palette.accent, gui = "bold" },
		TelescopeResultsDiffUntracked { TelescopePromptPrefix },

		TelescopeMatching { gui = "bold" },

		TelescopeBorder { base.FloatBorder },
		TelescopePreviewBorder { base.FloatBorder },
		TelescopeResultsBorder { TelescopePreviewBorder },
		TelescopePromptBorder { TelescopePreviewBorder },

		TelescopePromptCounter { bg = TelescopeNormal.bg, fg = palette.fg2 },
		TelescopeMultiSelection { fg = TelescopeNormal.bg, gui = "bold" },
		TelescopeSelectionCaret { bg = TelescopeNormal.bg, fg = base.Normal.fg },
		TelescopeSelection { bg = palette.bg2, fg = base.Normal.fg, gui = "bold" },

		TelescopeResultsConstant {},
		TelescopeResultsClass {},
		TelescopePreviewMessageFillchar {},
		TelescopePreviewMessage {},
		TelescopePreviewDate {},
		TelescopePreviewGroup {},
		TelescopePreviewUser {},
		TelescopePreviewSize {},
		TelescopePreviewSticky {},
		TelescopePreviewHyphen {},
		TelescopePreviewExecute {},
		TelescopePreviewWrite {},
		TelescopePreviewRead {},
		TelescopePreviewSocket {},
		TelescopePreviewLink {},
		TelescopePreviewBlock {},
		TelescopePreviewDirectory {},
		TelescopePreviewCharDev {},
		TelescopePreviewPipe {},
		TelescopePreviewMatch {},
		TelescopePreviewLine {},
		TelescopeResultsNormal {},
		TelescopeMultiIcon {},
		TelescopeResultsDiffDelete {},
		TelescopeResultsDiffAdd {},
		TelescopeResultsDiffChange {},
		TelescopeResultsNumber {},
		TelescopeResultsIdentifier {},
		TelescopeResultsLineNr {},
		TelescopeResultsSpecialComment {},
		TelescopeResultsVariable {},
		TelescopeResultsComment {},
		TelescopeResultsStruct {},
		TelescopeResultsOperator {},
		TelescopeResultsMethod {},
		TelescopeResultsFunction {},
		TelescopeResultsField {},
		TelescopeBufferLoaded {},
		TelescopePathSeparator {},
		TelescopeFrecencyScores {},
		TelescopeQueryFilter {},
	}
end)
return spec
