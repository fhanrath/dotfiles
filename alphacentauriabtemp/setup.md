groupadd sudo
useradd -m -G sudo fenris

/etc/sudoers

add
```
%sudo ALL=(ALL:ALL) NOPASSWD:ALL
%wheel ALL=(ALL:ALL) ALL
```

/etc/ssh/sshd_config

```
PermitRootLogin no
```

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl enable --now docker

sudo usermod -a -G docker fenris

sudo mkdir -p /matrix/db
sudo chown -R fenris /matrix

sudo mkdir -p /traefik/acm
sudo chown -R fenris /traefik/

touch /traefik/access.log
touch /traefik/traefik.log

cp traefik/traefik.yml /traefik
cp traefik/config.yml /traefik

sudo mkdir -p /soju/data/
sudo chown -R fenris /soju

cp soju/config /soju

sudo mkdir -p /wireguard/config
sudo chown -R fenris /wireguard

sudo vi /etc/docker/daemon.json
```
{
  "ipv6": true,
  "fixed-cidr-v6": "fd00::/80",
  "experimental": true,
  "ip6tables": true
}
```

sudo hx /etc/sysctl.d/zzz_allsrcvalid.conf
```
net.ipv4.conf.all.src_valid_mark = 1
net.ipv4.ip_forward = 1
net.ipv6.conf.all.forwarding = 1
```

## wireguard show qr codes

docker exec -it wireguard /app/show-peer iPhone,IPad,Mac,Pc

## setup hedgedoc

sudo mkdir -p /hedgedoc/uploads
sudo mkdir -p /hedgedoc/database
sudo chown -R fenris /hedgedoc/

cd ~/hedgedoc
sudo docker compose build
sudo docker compose up -d
