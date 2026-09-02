return {
  "mawkler/modicator.nvim",
  event = { "BufReadPost", "BufNewFile" },
  init = function()
    vim.o.cursorline = true
    vim.o.number = true
    -- La clave: NvChad usa "number" por defecto. Cambiamos a "both" para renderizar el fondo de línea
    vim.opt.cursorlineopt = "both"
  end,
  config = function()
    -- Colores para el número (fg) y fondo visible para la línea completa (bg)
    local mode_colors = {
      ["n"]   = { fg = "#61afef", bg = "#282c34" }, -- Normal: Azul
      ["i"]   = { fg = "#98c379", bg = "#2e382e" }, -- Insertar: Verde
      ["v"]   = { fg = "#c678dd", bg = "#3e2d47" }, -- Visual: Púrpura
      ["V"]   = { fg = "#c678dd", bg = "#3e2d47" }, -- Visual Línea: Púrpura
      ["\22"] = { fg = "#c678dd", bg = "#3e2d47" }, -- Visual Bloque: Púrpura
      ["c"]   = { fg = "#e5c07b", bg = "#3d362a" }, -- Comando: Amarillo
      ["R"]   = { fg = "#e06c75", bg = "#422a2c" }, -- Reemplazar: Rojo
      ["t"]   = { fg = "#7f848e", bg = "#282c34" }, -- Terminal: Gris
    }

    local function set_cursorline_color()
      -- Forzamos que la ventana mantenga la opción 'both'
      vim.wo.cursorlineopt = "both"
      vim.wo.cursorline = true

      local mode = vim.api.nvim_get_mode().mode
      local current_mode = mode:sub(1, 1)
      local style = mode_colors[mode] or mode_colors[current_mode] or mode_colors["n"]

      -- 1. Resaltar el número de línea
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = style.fg, bold = true, force = true })
      -- 2. Resaltar el fondo de la línea completa
      vim.api.nvim_set_hl(0, "CursorLine", { bg = style.bg, force = true })
    end

    vim.api.nvim_create_autocmd({ "ModeChanged", "BufEnter", "WinEnter" }, {
      group = vim.api.nvim_create_augroup("NvChadModicator", { clear = true }),
      callback = set_cursorline_color,
    })
  end,
}
