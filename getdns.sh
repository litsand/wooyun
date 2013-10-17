
#!/bin/bash

while read oneline  

do  

  NS=`dig ${oneline} +nssearch|head -1|awk '{printf $2}'` #取DNS服务器

  dig @${NS} ${oneline} axfr  >> dns.txt

done < domain.txt  #厂商列表
