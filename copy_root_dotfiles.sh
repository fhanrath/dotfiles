mkdir -p /usr/share/backgrounds/fenris

cp pipewire/etc/asound.conf /etc/asound.conf
./system/copy_system_files.sh
./systemd/copy_systemd_files.sh
cp pipewire/usr/lib/systemd/user/pipewire_sink.service /usr/lib/systemd/user/pipewire_sink.service
cp /usr/share/backgrounds/sway/Sway_Wallpaper_Blue_1920x1080.png /usr/share/backgrounds/fenris/desktop_wallpaper
./vscodium/patch_desktop_file.sh