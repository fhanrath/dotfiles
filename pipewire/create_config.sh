mkdir -p /etc/pipewire/media-session.d

cp /usr/share/pipewire/client.conf /etc/pipewire/client.conf
cp /usr/share/pipewire/pipewire-pulse.conf /etc/pipewire/pipewire-pulse.conf
cp /usr/share/pipewire/pipewire.conf /etc/pipewire/pipewire.conf
cp /usr/share/pipewire/media-session.d/media-session.conf /etc/pipewire/media-session.d/media-session.conf

sed -i 's/#default.clock.rate.*/default.clock.rate = 96000/' /etc/pipewire/pipewire.conf
sed -i 's/#default.clock.allowed-rates.*/default.clock.allowed-rates = [ 44100 48000 88200 96000 192000 ]/' /etc/pipewire/pipewire.conf

sed -i 's/#resample.quality.*/resample.quality = 10/' /etc/pipewire/client.conf
sed -i 's/#resample.quality.*/resample.quality = 10/' /etc/pipewire/pipewire-pulse.conf

sed -i 's/#metadata/metadata/' /etc/pipewire/media-session.d/media-session.conf
