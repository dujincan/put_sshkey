#!/bin/bash
# fanfa key
# jaosn du
# 2018 10 11
# v1.0


# rm old key
rm -f /root/.ssh/id_dsa*

# create new key
ssh-keygen -t dsa -f /root/.ssh/id_dsa -N ""

# put key to host
#for ip in 31 41 7
#do
#sshpass -p123456 ssh-copy-id -i /root/.ssh/id_dsa.pub "-o StrictHostKeyChecking=no 172.16.1.$ip"
#done

sshport=22
while read ip
do
sshpass -p123456 ssh-copy-id -i /root/.ssh/id_dsa.pub "-o StrictHostKeyChecking=no -p$sshport $ip"
done < /server/scripts/fenfa_key/hostip.txt
