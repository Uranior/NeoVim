#!/usr/bin/env bash
osascript -e '
tell application "Spotify"
  if player state is stopped then
    return "Stopped"
  else
    set trackName to name of current track as string
    set artistName to artist of current track as string
    return artistName & " - " & trackName
  end if
end tell'
