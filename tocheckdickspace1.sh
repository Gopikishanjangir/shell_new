#!/bin/sh
output1=/root/disk-usage.out
echo "---------------------------------------------------------------------------"
echo "HostName            Filesystem                Size Used Avail Use% Mounted on"
echo "---------------------------------------------------------------------------"
for server in `more /root/servers.txt`
do
output=`ssh $server df -Ph | tail -n +2 | sed s/%//g | awk '{ if($5 > 80) print $0;}'`
echo "$server: $output" >> $output1
done
cat $output1 | grep G | column -t
