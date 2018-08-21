#!/bin/bash
for i in  08 09 10 11 12 13 14 15
do 
	echo "install tstore$i"
	scp cephrpm.tar.bz2 root@tstore$i:
	scp install_rpm.sh root@tstore$i:
	ssh root@tstore$i 'bash /root/install_rpm.sh' &
done 
