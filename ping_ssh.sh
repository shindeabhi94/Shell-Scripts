#!/bin/sh
for i in `cat server_list.txt`
do
ping -c 1 $i
if [ $? -eq 0 ]
then
echo "$i" >> ping.txt
sudo ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no -o PreferredAuthentications=publickey $i "hostname"
if [ $? -eq 0 ]
then
echo "$i" >> ssh.txt
else
echo "$i" >> nossh.txt
fi
else
echo "$i" >> noping.txt
fi
done
