-- Stole some imports from astronvim
local utils = require "astronvim.utils"
local get_icon = utils.get_icon
local is_available = utils.is_available
local ui = require "astronvim.utils.ui"

local maps = require("astronvim.utils").empty_map_table()

if vim.fn.executable "btop" == 1 then
  maps.n["<leader>tt"] = { function() utils.toggle_term_cmd "btop" end, desc = "ToggleTerm btop" }
end

-- Custom keymaps added by me:
maps.n[";"] = {":", desc = "Open commands with ;"}
maps.v[";"] = {":", desc = "Open commands with ;"}

return maps
