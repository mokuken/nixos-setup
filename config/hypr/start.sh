#/usr/bin/env bash


# Running waybar
if pgrep waybar > /dev/null
then
    echo "waybar is already running"
else
    waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css &
fi

# Setting wallpaper
IMAGE_DIR="/home/mokuken/.config/hypr/waves"

if [ ! -d "$IMAGE_DIR" ]; then
  echo "Error: Image directory not found."
  exit 1
fi

images=("$IMAGE_DIR"/*)

if [ ${#images[@]} -eq 0 ]; then
  echo "Error: No image files found in the directory."
  exit 1
fi

num_images=${#images[@]}

random_index=$(( RANDOM % num_images ))

random_image="${images[$random_index]}"

echo "Randomly selected image: $random_image"

swww img "$random_image"


# Initialize wallpaper daemon
if pgrep swww > /dev/null
then
    echo "swww is already running"
else
    swww init &
fi

# Running dunst
# dunst
