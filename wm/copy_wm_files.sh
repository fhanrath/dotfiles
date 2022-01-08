#!/bin/bash
full_path=$(realpath $0)
dir_path=$(dirname $full_path)

mkdir -p ~/.config/waybar
mkdir -p ~/.config/swaynag

cp $dir_path/.config/waybar/config ~/.config/waybar/config
cp $dir_path/.config/waybar/style.css ~/.config/waybar/style.css
cp $dir_path/.config/sway/config ~/.config/sway/config
cp $dir_path/.config/swaynag/config ~/.config/swaynag/config