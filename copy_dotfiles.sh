mkdir -p ~/.config/VSCodium/User
mkdir -p ~/.config/images
mkdir -p ~/.config/rofi

cp zsh/.config/alias ~/.config/alias
cp zsh/.zshrc ~/.zshrc
cp git/.gitconfig ~/.gitconfig
cp bat/.config/bat.conf ~/.config/bat.conf
./bin/00copy_bin.sh
./wm/copy_wm_files.sh
cp Alacritty/.config/alacritty.yml ~/.config/alacritty.yml
cp vscodium/.config/VSCodium/User/settings.json ~/.config/VSCodium/User/settings.json
cp rofi/.config/config.rasi ~/.config/rofi/config.rasi
./desktop/patch_desktop_files.sh
./vscodium/install_extensions.sh