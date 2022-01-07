#!/bin/bash
full_path=$(realpath $0)
dir_path=$(dirname $full_path)
 
cp $dir_path/etc/modules-load.d/cdc_acm.conf /etc/modules-load.d/cdc_acm.conf
cp $dir_path/etc/modules-load.d/cifs.conf /etc/modules-load.d/cifs.conf