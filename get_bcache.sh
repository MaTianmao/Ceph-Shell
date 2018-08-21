#!/bin/bash

name=$(hostname)

cd /sys/block
ls | grep bcache > /root/bcache_$name
scp /root/bcache_$name root@tstore04:/root/ceph-deploy/cluster/bcache_name/
