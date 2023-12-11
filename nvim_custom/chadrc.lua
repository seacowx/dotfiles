---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "github_dark",
  theme_toggle = { "github_dark", "github_dark" },
  transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    overriden_modules = function(modules)
      modules[2] = (function()
        local fn = vim.fn
        local config = require("core.utils").load_config().ui.statusline
        local sep_style = config.separator_style

        local default_sep_icons = {
          default = { left = "", right = " " },
          round = { left = "", right = "" },
          block = { left = "█", right = "█" },
          arrow = { left = "", right = "" },
        }

        local separators = (type(sep_style) == "table" and sep_style) or default_sep_icons[sep_style]

        local sep_r = separators["right"]
        local icon = " 󰈚 "
        local filename = (fn.expand "%" == "" and "Empty ") or fn.expand "%:." --change here

        if filename ~= "Empty " then
          local devicons_present, devicons = pcall(require, "nvim-web-devicons")

          if devicons_present then
            local ft_icon = devicons.get_icon(filename)
            icon = (ft_icon ~= nil and " " .. ft_icon) or ""
          end

          filename = " " .. filename .. " "
        end

        return "%#St_file_info#" .. icon .. filename .. "%#St_file_sep#" .. sep_r
      end)()
    end,
  },
  nvdash = {
    load_on_startup = true
  },
  changed_themes = {
    github_dark = {
      base_16 = {
        base00 = "#24292E",
        base01 = "#33383d",
        base02 = "#383d42",
        base03 = "#42474c",
        base04 = "#4c5156",
        base05 = "#c9d1d9",
        base06 = "#d3dbe3", 
        base07 = "#dde5ed", 
        base08 = "#B392E9", 
        base09 = "#ffab70", 
        base0A = "#ffab70", 
        base0B = "#a5d6ff", 
        base0C = "#83caff", 
        base0D = "#6AB1F0", 
        base0E = "#ff7f8d", 
        base0F = "#ffab70",
      },
      polish_hl = {
        ["@string"] = {
          fg = "#a5d6ff",
        },
        ["@field.key"] = {
          fg = "#d3dbe3",
        },
        ["@constructor"] = {
          fg = "#ffab70",
          bold = true,
        },

        ["@tag.attribute"] = {
          link = "@method",
        },
      }
    }
  }
}

M.ui.hl_override = {
  CursorLineNr = {fg = "#ffffff", bg = "#f0a988"},
  LineNr = {fg = "#b0b2b5"},
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M


