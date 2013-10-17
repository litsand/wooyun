#!/bin/bash

while read oneline  

do    

  nmap -n --open -p 873 ${oneline}/24 >> 873.txt

done < ip.txt
