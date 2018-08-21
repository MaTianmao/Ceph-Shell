#!/bin/bash

for((i=0;i<1;i++))
do 
	rbd rm meta_pool/image$i
done 
