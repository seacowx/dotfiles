-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "gruvchad",

  transparency = true,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
  changed_themes = {
    all = {
      base_30 = {
        grey_fg = "#939185",
        grey = "#939185",
      },
      base_16 = {
        base02 =  "#67656e",
        base03 =  "#939185",
      }
    },
  }
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}

M.term = {
   winopts = { number = false },
   sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
   float = {
     row = 0.09, col = 0.1, width = 0.8, height = 0.8,
     border = "single",
   },
}

M.nvdash = {
  load_on_startup = true,
}

M.ui = {
  statusline = {
    theme='vscode_colored',
    separator_style = "round",
  },
}

M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}


return M
