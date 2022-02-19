#!/bin/bash
full_path=$(realpath $0)
dir_path=$(dirname $full_path)
 
cp $dir_path/etc/modules-load.d/cdc_acm.conf /etc/modules-load.d/cdc_acm.conf
cp $dir_path/etc/modules-load.d/cifs.conf /etc/modules-load.d/cifs.conf
cp $dir_path/etc/environment /etc/environments
cp $dir_path/etc/NetworkManager/conf.d/ip6-privacy.conf /etc/NetworkManager/conf.d/ip6-privacy.conf
