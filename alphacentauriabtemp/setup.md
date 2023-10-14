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

sudo vi /etc/docker/daemon.json
```
{
  "ipv6": true,
  "fixed-cidr-v6": "fd00::/80",
  "experimental": true,
  "ip6tables": true
}
```