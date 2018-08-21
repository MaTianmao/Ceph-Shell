#~/bin/bash

echo $i
for((i=0;i<168;i++))
do
	echo $i
	systemctl stop ceph-osd@$i
done
