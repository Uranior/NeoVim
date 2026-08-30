return {
  dir = vim.fn.stdpath("config") .. "/lua/plugins/spotify.nvim",
  name = "spotify",
  cmd = {
    "SpotifyPlayPause",
    "SpotifyNext",
    "SpotifyPrev",
  },
  config = function()
    require("spotify").setup {
      status_format = "%artist - %title",
    }
  end,
}
