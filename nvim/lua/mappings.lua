require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- map({ "n", "i", "v" }, "<c-s>", "<cmd> w <cr>")
-- map({ "n", "t" }, "<leader>tt", function()
--   require("nvchad.term").toggle { pos = "float", id = "floatterm" }
-- end, { desc = "terminal toggle floating term" })
map({ "n", "t" }, "<leader>tt", "<cmd> FloatermToggle <cr>", { desc = "terminal toggleable horizontal term" })

map({ "n", "t" }, "<leader>ww", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleterm" }
end, { desc = "terminal toggleable vertical term" })

-- copilot chat options
map({ "n", "t" }, "<leader>cc", "<cmd> CopilotChatToggle <cr>", { desc = "terminal toggleable horizontal term" })
map({ "n", "t" }, "<leader>ccr", "<cmd> CopilotChatReset <cr>", { desc = "terminal toggleable horizontal term" })
map({ "n", "t" }, "<leader>ccm", "<cmd> CopilotChatModels <cr>", { desc = "terminal toggleable horizontal term" })
map({ "n", "t" }, "<leader>ccq", function()
      local input = vim.fn.input("quick chat: ") if input ~= "" then require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
  end
end, {desc = "CopilotChat - quick chat"})
map({ "n", "t" }, "<leader>cce", "<cmd>CopilotChatExplain<cr>", {desc = "CopilotChat - explain code" })
map({ "n", "t" }, "<leader>ccf", "<cmd>CopilotChatFixdiagnostic<cr>", {desc = "CopilotChat - fix diagnostic"})
map({ "n", "t" }, "<leader>cci", "<cmd>CopilotChatInplace<cr>", {desc = "CopilotChat - in place"})

map({ "n", "t" }, "<leader>td", "<cmd> lazydotoggle <cr>", { desc = "toggle lazydo" })
map({ "n", "t" }, "<leader>tdp", "<cmd> lazydopin <cr>", { desc = "pin lazydo tasks" })

map({ "n", "t" }, "<leader>tf", "<cmd> TriforceToggle <cr>", { desc = "toggle triforce profile" })
