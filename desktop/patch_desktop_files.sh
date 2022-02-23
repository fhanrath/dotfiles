#!/bin/sh
cp /usr/share/applications/librewolf.desktop ~/.local/share/applications/librewolf.desktop
cp /usr/share/applications/chromium.desktop ~/.local/share/applications/chromium.desktop
cp /usr/share/applications/codium.desktop ~/.local/share/applications/codium.desktop

sed -i 's/Exec=/Exec=env GDK_BACKEND=wayland MOZ_ENABLE_WAYLAND=1 /' ~/.local/share/applications/librewolf.desktop
sed -i 's%Exec=/usr/bin/chromium%Exec=/usr/bin/chromium --ozone-platform-hint=auto%' ~/.local/share/applications/chromium.desktop
# only on sway, not gnome:
sed -i 's%Exec=/opt/vscodium-bin/bin/codium%Exec=/opt/vscodium-bin/bin/codium --enable-features=UseOzonePlatform --ozone-platform=wayland%' ~/.local/share/applications/codium.desktop