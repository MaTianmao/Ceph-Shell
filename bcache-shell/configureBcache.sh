#!/bin/bash
wipefs -a /dev/nvme0n1 /dev/sda /dev/sdb /dev/sdc /dev/sdd /dev/sde /dev/sdf /dev/sdg /dev/sdh /dev/sdi /dev/sdj /dev/sdk /dev/sdl
make-bcache --wipe-bcache -C /dev/nvme0n1 -B /dev/sda /dev/sdb /dev/sdc /dev/sdd /dev/sde /dev/sdf /dev/sdg /dev/sdh /dev/sdi /dev/sdj /dev/sdk /dev/sdl
cd /sys/block
for filename in `ls` 
do 
    if [[ $filename == bcache* ]]; then
        echo writeback > /sys/block/$filename/bcache/cache_mode
    fi 
done
