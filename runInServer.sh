#!/bin/bash
# runInServer, version 1
read -p "Enter IP address: " ip
read -p "Enter username: " uname

interpreter=$1
filename=$2

answer=`cat $filename | ssh $uname@$ip "cat > /tmp/$filename; cd /tmp/; $interpreter $filename; ./a.out;"`; 

echo "$answer"

exit 0