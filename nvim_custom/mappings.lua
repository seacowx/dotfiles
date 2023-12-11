---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-h>"] = { "<cmd>NvimTmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd>NvimTmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = { "<cmd>NvimTmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = { "<cmd>NvimTmuxNavigateUp<CR>", "window up"},
    ['<leader>gg'] = {'<cmd>LazyGit<CR>'},
    ["<leader>tt"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["<leader>hh"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<leader>vv"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },
  },
}

return M



