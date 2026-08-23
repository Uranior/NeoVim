require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Guardar archivo con Espacio + w
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Guardar archivo" })

-- Cerrar pestaña activa sin usar TbKillBuf (evita error E5108/E516)
map("n", "<leader>q", function()
  local bufnr = vim.api.nvim_get_current_buf()
  local modified = vim.bo[bufnr].modified

  if modified then
    vim.cmd("confirm bdelete " .. bufnr)
  else
    vim.cmd("bp | bd " .. bufnr)
  end
end, { desc = "Cerrar pestaña actual" })

-- Desactivar accesos directos por defecto de la terminal integrada
vim.keymap.del("n", "<leader>v")
vim.keymap.del("n", "<leader>h")
