#!/bin/bash

for((i=0;i<1;i++))
do
	rbd create --size 1000G --data-pool ecpool  meta_pool/image$i --object-size=4M
done
