cp pipewire/etc/asound.conf /etc/asound.conf
./system/copy_system_files.sh
./systemd/copy_systemd_files.sh
cp pipewire/usr/lib/systemd/user/pipewire_sink.service /usr/lib/systemd/user/pipewire_sink.service
./vscodium/patch_desktop_file.sh