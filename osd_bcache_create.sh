#!/bin/bash

create_osd(){	
	echo $1
	for i in `cat ./bcache_name/bcache_tstore$1`
	do
		echo "/dev/$i"
		ceph-deploy osd create --data /dev/$i tstore$1
	done
} 
create_osd 01 
create_osd 02 
create_osd 03 
create_osd 04 
create_osd 05 
create_osd 06 
create_osd 07 
create_osd 08 
create_osd 09 
create_osd 10 
create_osd 11 
create_osd 12 
create_osd 13 
create_osd 14 
create_osd 15 

