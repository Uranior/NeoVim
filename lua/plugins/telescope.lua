return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Buscar archivos" },
    { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Buscar texto (Live Grep)" },
    { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buscar buffers abiertos" },
    { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Buscar ayuda" },
    { "<leader>fw", "<cmd>Telescope grep_string<CR>", desc = "Buscar palabra bajo cursor" },
    { "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", desc = "Buscar en archivo actual" },
  },
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
  end,
}
