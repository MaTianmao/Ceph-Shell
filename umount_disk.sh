#!/bin/bash

ps aux  | grep MSR | grep -v grep | awk '{print $2}' | xargs kill -9
for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 
do
	umount -f /disk/disk$i
done


