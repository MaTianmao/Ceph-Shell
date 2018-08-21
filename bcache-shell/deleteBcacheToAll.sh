#!/bin/bash

for i in `seq -w 01 15`
do
	scp deleteBcache.sh tstore${i}:~/wuhao && scp hdd tstore${i}:~/wuhao  &&ssh tstore${i} "cd ~/wuhao && sh deleteBcache.sh" &
done
