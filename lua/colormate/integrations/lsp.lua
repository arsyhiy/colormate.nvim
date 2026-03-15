-- lua/colormate/integrations/lsp.lua
local colorscheme = require("colormate.colorscheme")

local M = {}

function M.highlights()
	return {
		DiagnosticError = { fg = colorscheme.syntaxError },
		DiagnosticWarn = { fg = colorscheme.warningText },
		DiagnosticInfo = { fg = colorscheme.syntaxFunction },
		DiagnosticHint = { fg = colorscheme.linkText },

		DiagnosticUnderlineError = { undercurl = true, sp = colorscheme.syntaxError },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colorscheme.warningText },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colorscheme.syntaxFunction },
		DiagnosticUnderlineHint = { undercurl = true, sp = colorscheme.linkText },

		LspSignatureActiveParameter = { fg = colorscheme.syntaxFunction, bold = true },
		LspCodeLens = { fg = colorscheme.commentText, italic = true },
	}
end

return M
