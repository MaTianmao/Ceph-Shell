#!/bin/bash

for((i=0;i<1;i++))
do
	umount -l /dev/rbd$i
done
