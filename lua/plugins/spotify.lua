return {
  "spinalshock/spotify.nvim",
  cmd = {
    "SpotifyPlayPause",
    "SpotifyNext",
    "SpotifyPrev",
    "SpotifyDevices",
  },
  config = function()
    require("spotify").setup {
      -- Configuración por defecto del plugin
      status_format = "%artist - %title",
    }
  end,
}
