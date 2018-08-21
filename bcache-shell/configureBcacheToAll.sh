#!/bin/bash

for i in `seq -w 01 15`
do
	scp configureBcache.sh tstore${i}:~/wuhao && ssh tstore${i} "cd ~/wuhao && sh configureBcache.sh"
done
