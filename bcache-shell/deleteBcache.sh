#!/bin/bash

cd /sys/fs/bcache
for cachename in `ls` 
do 
    if [ -d $cachename ]; then
        cd /sys/block
        for backdevice in `ls`
        do
        	if [[ $backdevice == bcache* ]]; then
        		echo $cachename > /sys/block/$backdevice/bcache/detach
        		echo 1 > /sys/block/$backdevice/bcache/stop
    		fi 
        done
        echo 1 > /sys/fs/bcache/$cachename/unregister && sleep 2 &&  mkfs.xfs -f /dev/nvme0n1
    fi 
done
cd /sys/block
for backdevice in `ls`
do
    if [[ $backdevice == bcache* ]]; then
        echo 1 > /sys/block/$backdevice/bcache/stop
    fi 
done



