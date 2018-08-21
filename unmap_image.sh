#!/bin/bash

for((i=0;i<1;i++))
do
	rbd unmap image$i --pool meta_pool
done
