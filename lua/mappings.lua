require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Guardar archivo con Espacio + w en modo normal
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Guardar archivo" })

