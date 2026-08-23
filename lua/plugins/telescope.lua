return {
  "nvim-telescope/telescope.nvim",
  -- Hemos quitado 'tag = 0.1.8' para usar la rama principal compatible
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    local map = vim.keymap.set

    map("n", "<leader>ff", builtin.find_files, { desc = "Buscar archivos" })
    map("n", "<leader>fg", builtin.live_grep, { desc = "Buscar texto (Grep)" })
    map("n", "<leader>fb", builtin.buffers, { desc = "Buscar en buffers abiertos" })
    map("n", "<leader>fh", builtin.help_tags, { desc = "Buscar en la ayuda" })
    map("n", "<leader>fw", builtin.grep_string, { desc = "Buscar palabra bajo el cursor" })
  end,
}
