local options = {

  base46 = {
    theme = "penumbra_light",
    transparency = true,

    hl_override = {
      Comment = { italic = true },
      ["@comment"] = { italic = true },
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

  --   changed_themes = {
  --     all = {
  --       base_30 = {
  --         -- grey_fg = "#939185",
  --         -- grey = "#939185",
  --       },
  --       base_16 = {
  --         -- base02 =  "#67656e",
  --         -- base03 =  "#939185",
  --       }
  --     },
  --   }
  -- },

  term = {
     winopts = { number = false },
     sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
     float = {
       row = 0.09, col = 0.1, width = 0.8, height = 0.8,
       border = "single",
     },
  },

  nvdash = {
    load_on_startup = true,
  },

  ui = {
    statusline = {
      theme = "default",
      separator_style = "block",
    },
  },

  colorify = {
    enabled = true,
    mode = "virtual", -- fg, bg, virtual
    virt_text = "󱓻 ",
    highlight = { hex = true, lspvars = true },
  }

}

local status, chadrc = pcall(require, "chadrc")
return vim.tbl_deep_extend("force", options, status and chadrc or {})
