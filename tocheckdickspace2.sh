#!/usr/bin/expect -f  
servers="/root/servers.txt"  
for HOST in $(cat $servers) ; do  
spawn ssh -q $HOST  
expect "root:"  
send "kishan@123\r"  
interact  
echo ' '  
echo "====For space utilization details for server $HOST===" >/tmp/space_utilization.log  
Df -kh >> /tmp/space_utilization.log  
echo ' '  
done  
