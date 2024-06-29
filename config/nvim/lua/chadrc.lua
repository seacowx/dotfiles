-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "radium",
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
  
  changed_themes = {
    radium = {
      base_30 = {
        white = "#d4d4d5",
        darker_black = "#0a0d11",
        black = "#101317", --  nvim bg
        black2 = "#191d22",
        one_bg = "#212428",
        one_bg2 = "#292c30",
        one_bg3 = "#33363a",
        grey = "#3e4145",
        grey_fg = "#C7B7A3",
        grey_fg2 = "#4a4d51",
        light_grey = "#525559",
        red = "#f87070",
        baby_pink = "#ff8e8e",
        pink = "#ffa7a7",
        line = "#30303a", -- for lines like vertsplit
        green = "#37d99e",
        vibrant_green = "#79dcaa",
        blue = "#7ab0df",
        nord_blue = "#87bdec",
        yellow = "#ffe59e",
        sun = "#ffeda6",
        purple = "#c397d8",
        dark_purple = "#b68acb",
        teal = "#63b3ad",
        orange = "#f0a988",
        cyan = "#50cad2",
        statusline_bg = "#15191e",
        lightbg = "#24282d",
        pmenu_bg = "#3bdda2",
        folder_bg = "#5fb0fc",
      }
    }
  }

}

return M


