#!/usr/bin/env bash


# Running waybar
waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css &

# Setting wallpaper
swww img /home/mokuken/Downloads/Espresso.jpg

# Initialize wallpaper daemon
swww init &

# Running dunst
# dunst
