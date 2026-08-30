return {
  "sindrets/diffview.nvim",
  cmd = { 
    "GitLogDiff", 
    "DiffviewOpen", 
    "DiffviewClose", 
    "DiffviewFileHistory", 
    "DiffviewToggleFiles", 
    "DiffviewFocusFiles" 
  },
  opts = {
    keymaps = {
      view = {
        { "n", "<Up>", "<cmd>lua require('diffview.config').actions.select_prev_entry()<CR>", { desc = "Archivo anterior" } },
        { "n", "<Down>", "<cmd>lua require('diffview.config').actions.select_next_entry()<CR>", { desc = "Archivo siguiente" } },
      },
      file_panel = {
        { "n", "<Up>", "<cmd>lua require('diffview.config').actions.select_prev_entry()<CR>", { desc = "Archivo anterior" } },
        { "n", "<Down>", "<cmd>lua require('diffview.config').actions.select_next_entry()<CR>", { desc = "Archivo siguiente" } },
      },
    },
  },
  config = function(_, opts)
    local diffview = require("diffview")
    diffview.setup(opts)

    -- Crear el comando alias personalizado :GitLogDiff
    vim.api.nvim_create_user_command("GitLogDiff", function()
      vim.cmd("DiffviewFileHistory %")
    end, { desc = "Ver historial y diff del archivo actual en Git" })
  end,
}
