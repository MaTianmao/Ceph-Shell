#!/bin/bash

for((i=0;i<1;i++))
do
	mkfs.xfs -f /dev/rbd$i
done
