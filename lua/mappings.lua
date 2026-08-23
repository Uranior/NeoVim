require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Guardar archivo con Espacio + w en modo normal
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Guardar archivo" })

-- Cerrar ÚNICAMENTE la pestaña actual sin romper las ventanas/splits
map("n", "<leader>q", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Cerrar pestaña actual" })

-- DESACTIVAR terminales por defecto de NvChad en <leader>v y <leader>h
vim.keymap.del("n", "<leader>v")
vim.keymap.del("n", "<leader>h")
