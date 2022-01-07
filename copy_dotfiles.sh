mkdir -p ~/.config/VSCodium/User

cp zsh/.config/alias ~/.config/alias
cp zsh/.zshrc ~/.zshrc
cp git/.gitconfig ~/.gitconfig
cp bat/.config/bat.conf ~/.config/bat.conf
./bin/00copy_bin.sh
./wm/copy_wm_files.sh
cp Alacritty/.config/alacritty.yml ~/.config/alacritty.yml
cp vscodium/.config/VSCodium/User/settings.json ~/.config/VSCodium/User/settings.json
./vscodium/install_extensions.sh