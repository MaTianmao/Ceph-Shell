#!/bin/bash

create_osd(){	
	echo $1
	#for i in a b c d e f g h i j k l
	#do
		ceph-deploy osd create --data /dev/nvme0n1 tstore$1 
	#done
} 
create_osd 00
create_osd 01 
create_osd 02
create_osd 03 
create_osd 04 
create_osd 05
create_osd 06
create_osd 07 
