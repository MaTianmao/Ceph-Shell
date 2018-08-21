#!/bin/bash

for((i=0;i<1;i++))
do
	mount  /dev/rbd$i ./rbdmap$i
done
