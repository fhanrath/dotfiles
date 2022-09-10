#!/bin/sh
full_path=$(realpath $0)
dir_path=$(dirname $full_path)

mkdir -p ~/.config/helix

cp $dir_path/.config/helix/config.toml ~/.config/helix/