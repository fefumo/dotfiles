#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures"

# Select a random image from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' -o -iname '*.bmp' -o -iname '*.webp' \) | shuf -n 1)

# If no image is found, exit
if [ -z "$WALLPAPER" ]; then
    echo "No images found in the directory."
    exit 1
fi

# Apply the colorscheme with pywal and set the wallpaper using feh
wal -n -i "$WALLPAPER"
feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"

