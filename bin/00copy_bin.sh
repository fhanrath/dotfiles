#!/bin/bash
full_path=$(realpath $0)
dir_path=$(dirname $full_path)
 
mkdir -p ~/.config/bin
cp $dir_path/get_gpu_load.sh ~/.config/bin/get_gpu_load.sh