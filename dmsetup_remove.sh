#!/bin/bash

dmsetup ls | grep ceph | awk '{print $1}' | xargs dmsetup remove
lvdisplay | grep ceph | grep -v dev | awk '{print $3}' | xargs vgremove -y

pvremove /dev/sd*
pvremove /dev/bcache*
pvremove /dev/nvme*
