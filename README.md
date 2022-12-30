# dotfiles

my dotfiles.
Available on [sourcehut](https://git.sr.ht/~fenris/dotfiles).

## How to initialize

### gopass

Have gopass installed.
First create key (see keys)
Add pub key via already registered user.
Add the correct repository as fenris-admin.

`$ gopass init`

#### commands

list entries
`$ gopass ls`

create password
`$ gopass insert fenris-admin/arst`

clone existing store
`$ gopass clone git@...git fenris-admin --sync gitcli`

sync
`$ gopass sync`

view users
`$ gopass recipients`

add user
`$ gopass recipients add <name>`

#### keys

generate key (ecc)
`$ gpg --full-generate-key --expert`

export pub key
`$ gpg -a --export <name> > <name>.pub.asc`

import pub key
`$ gpg --import < <name>.pub.asc`

list keys
`$ gpg --list-keys`

## working with vaults

have the environment var `EDITOR` set to something.

`$ ansible-vault edit/create host_vars/host/vault`

## --
```
cd ~
git init
git remote add origin git@git.sr.ht:~fenris/dotfiles
git fetch
git checkout -f main
```

## resources

https://www.mankier.com/5/waybar

## TODO

https://github.com/folke/tokyonight.nvim


## open source used
https://github.com/gidsi/dotfiles
- Drew DeVault's dotfiles https://git.sr.ht/~sircmpwn/dotfiles
- Tokyo Night Theme by enkia https://github.com/enkia/tokyo-night-vscode-theme, MIT
  - Tokyo Night Alacritty Theme by zatchheems https://github.com/zatchheems/tokyo-night-alacritty-theme, MIT
- Tokyo Night dotfiles by lokesh-krishna https://github.com/lokesh-krishna/dotfiles/tree/main/tokyo-night, MIT
