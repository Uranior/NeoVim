require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Guardar archivo con Espacio + w
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Guardar archivo" })

-- Abrir terminal flotante superpuesta en la carpeta del archivo actual
map({ "n", "t" }, "<leader>tf", function()
  -- Obtiene el directorio contenedor del archivo abierto
  local current_dir = vim.fn.expand("%:p:h")
  
-- Abre la terminal pasándole esa ruta como directorio de trabajo
  require("nvchad.term").toggle { 
    pos = "float", 
    id = "currentFileTerm",
    cmd = "cd " .. vim.fn.fnameescape(current_dir) .. " && zsh"
  }
end, { desc = "Terminal flotante en carpeta del archivo" })

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


-- GitLogDiff (Dentro del grupo <leader>g)
map("n", "<leader>gl", "<cmd>GitLogDiff<CR>", { desc = "Ver Git Log & Diff" })
map("n", "<leader>gc", "<cmd>GitLogDiffClose<CR>", { desc = "Cerrar Git Log & Diff" })

-- Desactivar accesos directos por defecto de la terminal integrada
vim.keymap.del("n", "<leader>v")
vim.keymap.del("n", "<leader>h")
