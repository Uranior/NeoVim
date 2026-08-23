return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    -- Mostrar la información de 'git blame' en la línea actual
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol", -- Al final de la línea
      delay = 300,            -- Retraso en ms antes de mostrarlo
    },
    current_line_blame_formatter = "   <author>, <author_time:%Y-%m-%d> - <summary>",
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns
      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Atajos de teclado para moverte entre cambios (Hunks)
      map("n", "]c", function()
        if vim.wo.diff then return "]c" end
        vim.schedule(function() gs.next_hunk() end)
        return "<Ignore>"
      end, { expr = true, desc = "Siguiente cambio Git" })

      map("n", "[c", function()
        if vim.wo.diff then return "[c" end
        vim.schedule(function() gs.prev_hunk() end)
        return "<Ignore>"
      end, { expr = true, desc = "Anterior cambio Git" })

      -- Atajos con espacio (<leader>)
      map("n", "<leader>hp", gs.preview_hunk, { desc = "Previsualizar cambio en flotante" })
      map("n", "<leader>hb", function() gs.blame_line { full = true } end, { desc = "Blame completo de la línea" })
    end,
  },
}
