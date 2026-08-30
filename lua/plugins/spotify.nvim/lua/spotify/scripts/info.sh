#!/usr/bin/env bash
osascript -e '
tell application "Spotify"
  if player state is stopped then
    return "Spotify detenido"
  else
    set trackName to name of current track as string
    set artistName to artist of current track as string
    set albumName to album of current track as string
    return "🎵 " & artistName & " - " & trackName & " (" & albumName & ")"
  end if
end tell'
