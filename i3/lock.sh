#!/bin/bash

# Path to your background image
BACKGROUND_IMAGE="$HOME/Pictures/j.jpg"

# Apply blur to the background using ImageMagick (use 'magick' instead of 'convert')
magick $BACKGROUND_IMAGE -blur 0x8 /tmp/blurred_background.png

# Lock the screen using i3lock-color with the blurred background
i3lock-color -i /tmp/blurred_background.png --blur 5 --clock --indicator --ring-color=00ff00 --line-uses-inside --inside-color=00000000 --insidever-color=00000000 --insidewrong-color=00000000 --keyhl-color=ff0000 --bshl-color=ff0000

# Clean up the temporary blurred background image after locking
rm /tmp/blurred_background.png

