#!/bin/sh
sshfs -o reconnect,allow_other,gid={{ datagroup_id.stdout }} fenris@nas.fenris.local:/mnt/fenris_pool /data