mkdir -p ~/.config/VSCodium/User
mkdir -p ~/.config/images
mkdir -p ~/.config/rofi
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/gtk-4.0
mkdir -p ~/.config/qt5ct


cp zsh/.config/alias ~/.config/alias
cp zsh/.zshrc ~/.zshrc
touch ~/.config/local_settings
cp git/.gitconfig ~/.gitconfig
cp bat/.config/bat.conf ~/.config/bat.conf
./bin/00copy_bin.sh
./wm/copy_wm_files.sh
cp Alacritty/.config/alacritty.yml ~/.config/alacritty.yml
cp vscodium/.config/VSCodium/User/settings.json ~/.config/VSCodium/User/settings.json
cp rofi/.config/config.rasi ~/.config/rofi/config.rasi
cp gtk/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
cp gtk/.config/gtk-4.0/settings.ini ~/.config/gtk-4.0/settings.ini
cp gtk/.gtkrc-2.0 ~/.gtkrc-2.0
cp qt/.config/qt5ct/qt5ct.conf ~/.config/qt5ct/qt5ct.conf
./desktop/patch_desktop_files.sh