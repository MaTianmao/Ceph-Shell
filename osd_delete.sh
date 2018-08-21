#!/bin/bash

delete_osd(){
	echo $i
	ceph osd out $1
	ceph osd down $1
	ceph osd purge $1 --yes-i-really-mean-it
}
for ((i = 3; i <4; i++))
do
	delete_osd $i 
done  
