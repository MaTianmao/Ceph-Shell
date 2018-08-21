#!/bin/bash

for i in `seq -w 01 15`
do
	scp get_bcache.sh root@tstore$i:
	ssh root@tstore$i 'bash /root/get_bcache.sh'
done
