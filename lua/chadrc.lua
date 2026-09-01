-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

-- Desactivar el dashboard nativo de NvChad para evitar solapamientos
M.nvdash = {
  load_on_startup = false,
}

-- Posicionamiento de Terminal Flotante
M.term = {
  float = {
    relative = "editor",
    row = 0.16,
    col = 0.15,
    width = 0.80,
    height = 0.75,
    border = "single",
  },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
