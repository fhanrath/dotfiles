#!/bin/bash
full_path=$(realpath $0)
dir_path=$(dirname $full_path)
 
mkdir -p ~/.config/bin
cp $dir_path/get_gpu_load.sh ~/.config/bin/get_gpu_load.sh
cp $dir_path/waybar-date.sh ~/.config/bin/waybar-date.sh
cp $dir_path/waybar-power.sh ~/.config/bin/waybar-power.sh
cp $dir_path/get_volume_in_percent.sh ~/.config/bin/get_volume_in_percent.sh