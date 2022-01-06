if [ -z $(cat /usr/share/applications/codium.desktop | grep -E "platform=wayland" -) ] 
then 
sed -i "s%Exec=/opt/vscodium-bin/bin/codium --no-sandbox%Exec=/opt/vscodium-bin/bin/codium --no-sandbox --enable-features=UseOzonePlatform --ozone-platform=wayland%g" /usr/share/applications/codium.desktop
fi