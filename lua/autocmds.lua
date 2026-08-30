require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

-- Cambiar automáticamente el CWD a la raíz del repositorio Git del archivo activo
autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("AutoGitRoot", { clear = true }),
  callback = function()
    local filepath = vim.api.nvim_buf_get_name(0)

    -- Ignorar buffers vacíos o paneles especiales (NvimTree, Aerial, etc.)
    if filepath == "" or vim.bo.buftype ~= "" then
      return
    end

    -- API nativa de Neovim (ultra rápida, sin llamadas de shell)
    local git_root = vim.fs.root(filepath, ".git")

    -- Si se encuentra la raíz Git del archivo, cambiamos el CWD
    if git_root then
      vim.cmd("cd " .. vim.fn.fnameescape(git_root))
    end
  end,
})
