local lush = require("lush")
local base = require("orng.base")
local palette = require("orng.palette")

---@diagnostic disable: undefined-global
-- selene: allow(undefined_variable)
-- stylua: ignore start
local spec = lush(function()
	return {
		-- codediff.nvim
		CodeDiffHistoryTitle { fg = palette.fg4, gui = "bold" },

		-- blink.cmp
		BlinkCmpSource { fg = palette.fg4 },
		BlinkCmpLabelDetail { fg = palette.fg4 },
		BlinkCmpLabelDescription { fg = palette.fg4 },

		BlinkCmpLabelAbbr { fg = palette.fg3 },
		BlinkCmpLabelAbbrMatch { fg = Normal.fg, gui = "bold" },
		BlinkCmpLabelAbbrDeprecated { fg = palette.fg3 , gui = "strikethrough" },

		BlinkCmpKind { bg = palette.bg2, fg = palette.fg2 },
		BlinkCmpKindFunction { bg = palette.delbg, fg = palette.delfg },
		BlinkCmpKindMethod { BlinkCmpKindFunction },
		BlinkCmpKindUnit { BlinkCmpKindFunction },
		BlinkCmpKindConstructor { BlinkCmpKindFunction },
		BlinkCmpKindEnum { BlinkCmpKindFunction },
		BlinkCmpKindField { BlinkCmpKindFunction },
		BlinkCmpKindOperator { BlinkCmpKindFunction },
		BlinkCmpKindReference { BlinkCmpKindFunction },
		BlinkCmpKindTypeParameter { BlinkCmpKindFunction },
		BlinkCmpKindInterface { base.Info },
		BlinkCmpKindKeyword { BlinkCmpKindInterface },
		BlinkCmpKindColor { BlinkCmpKindInterface },
		BlinkCmpKindEnumMember { BlinkCmpKindInterface },
		BlinkCmpKindFolder { BlinkCmpKindInterface },
		BlinkCmpKindSnippet { BlinkCmpKindInterface },
		BlinkCmpKindVariable { base.Hint },
		BlinkCmpKindClass { BlinkCmpKindVariable },
		BlinkCmpKindFile { BlinkCmpKindVariable },
		BlinkCmpKindValue { BlinkCmpKindVariable },
		BlinkCmpKindText { base.Warning },
		BlinkCmpKindConstant { BlinkCmpKindText },
		BlinkCmpKindModule { BlinkCmpKindText },
		BlinkCmpKindProperty { bg = palette.addbg, fg = palette.addfg },
		BlinkCmpKindEvent { BlinkCmpKindProperty },
		BlinkCmpKindStruct { BlinkCmpKindProperty },

		BlinkCmpGhostText { base.Comment },
		BlinkCmpSignatureHelpBorder { base.FloatBorder },
		BlinkCmpDocBorder { base.FloatBorder },

		-- gitsigns.nvim
		GitSignsAdd { base.DiffTextAdded },
		GitSignsChange { base.DiffTextChanged },
		GitSignsDelete { base.DiffTextRemoved },
		GitSignsCurrentLineBlame { base.LineNr },

		-- gitsigns.nvim
		GitSignsAdd { base.DiffTextAdded },
		GitSignsChange { base.DiffTextChanged },
		GitSignsDelete { base.DiffTextRemoved },
		GitSignsCurrentLineBlame { base.LineNr },

		-- neogit
		NeogitActiveItem { bg = palette.bg2 },

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
