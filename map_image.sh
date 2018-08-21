#!/bin/bash

for((i=0;i<1;i++))
do
	rbd feature disable meta_pool/image$i object-map fast-diff deep-flatten
	rbd map image$i --pool meta_pool --id admin
done
