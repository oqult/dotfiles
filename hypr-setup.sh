#!/bin/bash
TEMP_DIR=/tmp/dotfiles
DEST_DIR=~/.config
rm -rf "$TEMP_DIR"

git clone https://github.com/oqult/dotfiles.git "$TEMP_DIR"
cd "$TEMP_DIR"

for dir in */ ; do
	if [ -d "$dir" ]; then
		dir_name=$(basename "$dir")
		src_path="$TEMP_DIR"/"$dir_name"
		dest_path="$DEST_DIR"/"$dir_name"

		mkdir -p "$dest_path"
		cp -r "$src_path/"* "$dest_path/"
	fi
done
chmod +x ~/.config/waybar/waybar.sh
chmod +x ~/.config/waybar/mediaplayer.py
chmod +x ~/.config/waybar/ai.sh
chmod +x ~/.config/waybar/toggle-hypridle.sh
rm -rf "$TEMP_DIR"
