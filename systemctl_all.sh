#!/bin/bash

for i in  01 02 04 05 06 07 08 09 10 11 12 13 14 15
do
	scp systemctl_every.sh root@tstore$i:
done
