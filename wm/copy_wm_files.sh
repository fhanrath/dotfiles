#!/bin/bash
full_path=$(realpath $0)
dir_path=$(dirname $full_path)

mkdir -p ~/.config/sway
mkdir -p ~/.config/sway/borders
mkdir -p ~/.config/waybar
mkdir -p ~/.config/swaynag

cp $dir_path/.config/waybar/config ~/.config/waybar/config
cp $dir_path/.config/waybar/style.css ~/.config/waybar/style.css
cp $dir_path/.config/sway/config ~/.config/sway/config
cp -r $dir_path/.config/sway/borders ~/.config/sway/borders
cp $dir_path/.config/swaynag/config ~/.config/swaynag/config