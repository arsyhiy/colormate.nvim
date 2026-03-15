-- lua/colormate/integrations/nvimtree.lua
local colorscheme = require("colormate.colorscheme")

local M = {}

function M.highlights()
	return {
		NvimTreeNormal = { fg = colorscheme.mainText, bg = colorscheme.sidebarBackground },
		NvimTreeNormalNC = { link = "NvimTreeNormal" },
		NvimTreeFolderName = { fg = colorscheme.syntaxFunction },
		NvimTreeOpenedFolderName = { fg = colorscheme.syntaxFunction, bold = true },
		NvimTreeFileName = { fg = colorscheme.mainText },
		NvimTreeIndentMarker = { fg = colorscheme.syntaxOperator },

		NvimTreeGitNew = { fg = colorscheme.successText },
		NvimTreeGitDirty = { fg = colorscheme.warningText },
		NvimTreeGitDeleted = { fg = colorscheme.syntaxError },
		NvimTreeGitStaged = { fg = colorscheme.linkText },

		NvimTreeSpecialFile = { fg = colorscheme.stringText, bold = true },
		NvimTreeSymlink = { fg = colorscheme.linkText },
	}
end

return M
