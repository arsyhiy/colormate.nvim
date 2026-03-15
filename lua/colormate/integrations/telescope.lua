-- lua/colormate/integrations/telescope.lua
local colorscheme = require("colormate.colorscheme")

local M = {}

function M.highlights()
	return {
		TelescopeBorder = { fg = colorscheme.windowBorder },
		TelescopePromptBorder = { fg = colorscheme.syntaxFunction },
		TelescopeResultsBorder = { fg = colorscheme.windowBorder },
		TelescopePreviewBorder = { fg = colorscheme.windowBorder },

		TelescopePromptPrefix = { fg = colorscheme.syntaxKeyword },
		TelescopeSelection = { fg = colorscheme.mainText, bg = colorscheme.popupBackground, bold = true },
		TelescopeSelectionCaret = { fg = colorscheme.syntaxFunction },
		TelescopeMatching = { fg = colorscheme.successText, bold = true },

		TelescopeResultsTitle = { fg = colorscheme.syntaxFunction },
		TelescopePromptTitle = { fg = colorscheme.syntaxKeyword },
		TelescopePreviewTitle = { fg = colorscheme.linkText },
	}
end

return M
