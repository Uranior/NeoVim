return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require "telescope.builtin"
    local map = vim.keymap.set

    map("n", "<leader>ff", builtin.find_files, { desc = "Buscar archivos" })
    map("n", "<leader>fg", builtin.live_grep, { desc = "Buscar texto" })
    map("n", "<leader>fb", builtin.buffers, { desc = "Buscar buffers" })
    map("n", "<leader>fh", builtin.help_tags, { desc = "Buscar ayuda" })
  end,
}
