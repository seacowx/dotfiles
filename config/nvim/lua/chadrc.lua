-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.term = {
   winopts = { number = false },
   sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
   float = {
     row = 0.09, col = 0.1,
     width = 0.8, height = 0.8,
     border = "single",
   },
 }

M.base46 = {
	theme = "onedark",
  transparency = true,

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},

  statusline = {
    theme = "vscode_colored"
  },

  nvdash = {
    load_on_startup = true,
  },

  term = {
    float = {
      relative = "editor",
      width = 0.8,
      height = 0.8,
      row = 0.088,
      col = 0.088,
      border = "double"
    }
  },

  -- Test
  changed_themes = {
    gruvchad = {
      base_30 = {
        grey_fg = "#808D7C",
        grey = "#939185",
      },
      base_16 = {
        base02 = "#666569",
      }
    },
  }
}

return M
