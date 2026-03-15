-- lua/colormate/integrations/treesitter.lua
local colorscheme = require("colormate.colorscheme")

local M = {}

function M.highlights()
	return {
		-- === Базовые (как раньше, но улучшено) ===
		["@keyword"] = { fg = colorscheme.syntaxKeyword, italic = true },
		["@keyword.function"] = { fg = colorscheme.syntaxKeyword },
		["@keyword.operator"] = { fg = colorscheme.syntaxOperator },
		["@keyword.return"] = { fg = colorscheme.syntaxKeyword },

		["@function"] = { fg = colorscheme.syntaxFunction },
		["@function.call"] = { fg = colorscheme.syntaxFunction },
		["@function.method"] = { fg = colorscheme.syntaxFunction },
		["@function.method.call"] = { fg = colorscheme.syntaxFunction },

		["@variable"] = { fg = colorscheme.mainText },
		["@variable.builtin"] = { fg = colorscheme.syntaxError },
		["@variable.parameter"] = { fg = colorscheme.emphasisText },
		["@variable.member"] = { fg = colorscheme.linkText },

		["@type"] = { fg = colorscheme.syntaxKeyword },
		["@type.builtin"] = { fg = colorscheme.syntaxKeyword },
		["@type.definition"] = { fg = colorscheme.syntaxKeyword },

		["@property"] = { fg = colorscheme.syntaxFunction },
		["@field"] = { fg = colorscheme.syntaxFunction },

		["@string"] = { fg = colorscheme.stringText, italic = true },
		["@string.regex"] = { fg = colorscheme.stringText },
		["@string.escape"] = { fg = colorscheme.syntaxError },
		["@string.special"] = { fg = colorscheme.syntaxFunction },

		["@number"] = { fg = colorscheme.foregroundEmphasis, bold = true },
		["@boolean"] = { fg = colorscheme.syntaxFunction },
		["@constant"] = { fg = colorscheme.foregroundEmphasis },
		["@constant.builtin"] = { fg = colorscheme.syntaxError },

		["@operator"] = { fg = colorscheme.syntaxOperator },
		["@punctuation.delimiter"] = { fg = colorscheme.syntaxOperator },
		["@punctuation.bracket"] = { fg = colorscheme.syntaxOperator },
		["@punctuation.special"] = { fg = colorscheme.syntaxKeyword },

		["@comment"] = { fg = colorscheme.commentText, italic = true },

		["@tag"] = { fg = colorscheme.syntaxFunction },
		["@tag.attribute"] = { fg = colorscheme.linkText },
		["@attribute"] = { fg = colorscheme.linkText },

		["@constructor"] = { fg = colorscheme.syntaxFunction },
		["@conditional"] = { fg = colorscheme.syntaxKeyword },
		["@repeat"] = { fg = colorscheme.syntaxKeyword },
		["@include"] = { fg = colorscheme.syntaxKeyword },
		["@exception"] = { fg = colorscheme.syntaxError },

		["@namespace"] = { fg = colorscheme.syntaxKeyword },
		["@module"] = { fg = colorscheme.syntaxKeyword },

		-- === Markdown ===
		["@markup.heading"] = { fg = colorscheme.syntaxFunction, bold = true },
		["@markup.heading.1"] = { fg = colorscheme.syntaxKeyword, bold = true },
		["@markup.heading.2"] = { fg = colorscheme.linkText, bold = true },
		["@markup.heading.3"] = { fg = colorscheme.warningText, bold = true },
		["@markup.strong"] = { fg = colorscheme.emphasisText, bold = true },
		["@markup.italic"] = { fg = colorscheme.emphasisText, italic = true },
		["@markup.list"] = { fg = colorscheme.syntaxOperator },
		["@markup.link"] = { fg = colorscheme.linkText },
		["@markup.link.label"] = { fg = colorscheme.linkText },
		["@markup.quote"] = { fg = colorscheme.commentText, italic = true },

		-- === Lua-specific ===
		["@variable.lua"] = { fg = colorscheme.mainText },
		["@constructor.lua"] = { fg = colorscheme.syntaxFunction },

		-- === Rust-specific ===
		["@type.rust"] = { fg = colorscheme.syntaxKeyword },
		["@function.rust"] = { fg = colorscheme.syntaxFunction },

		-- === TypeScript / JS ===
		["@type.typescript"] = { fg = colorscheme.syntaxKeyword },
		["@property.typescript"] = { fg = colorscheme.syntaxFunction },
		["@variable.member.typescript"] = { fg = colorscheme.linkText },

		-- === @lsp semantic tokens (очень полезно!) ===
		["@lsp.type.function"] = { fg = colorscheme.syntaxFunction },
		["@lsp.type.method"] = { fg = colorscheme.syntaxFunction },
		["@lsp.type.variable"] = { fg = colorscheme.mainText },
		["@lsp.type.parameter"] = { fg = colorscheme.emphasisText },
		["@lsp.type.property"] = { fg = colorscheme.linkText },
		["@lsp.type.class"] = { fg = colorscheme.syntaxKeyword },
		["@lsp.type.interface"] = { fg = colorscheme.syntaxKeyword },
		["@lsp.type.namespace"] = { fg = colorscheme.syntaxKeyword },
		["@lsp.type.enum"] = { fg = colorscheme.syntaxKeyword },
		["@lsp.type.typeParameter"] = { fg = colorscheme.warningText },
	}
end

return M
