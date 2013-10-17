#!/bin/bash
for ((i=1;i<25;i++))
do
	curl http://www.wooyun.org/corps/page/$i | grep nofollow >> wooyun.txt
done
