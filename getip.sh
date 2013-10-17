#!/bin/bash

while read oneline  

do    

  dig ${oneline}|grep IN|grep A|tail -n 1|awk '{printf $5"\n"}' >> ip.txt

done < domain.txt
