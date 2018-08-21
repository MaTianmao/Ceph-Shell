#!/bin/bash
for i in 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15
do 
	echo $i
	scp clean-ceph.sh root@tstore$i:
done 
for i in 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15
do 
	ssh root@tstore$i 'bash /root/clean-ceph.sh'
done 
