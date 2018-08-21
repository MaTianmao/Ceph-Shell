#!/bin/bash
for((i=0;i<16;i++))
do
	ceph osd out $i
done
