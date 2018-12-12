#!/bin/bash
# fanfa key
# jaosn du
# 2018 10 11
# v1.0


# rm old key
#rm -f /root/.ssh/id_dsa*

# create new key
ssh-keygen -t dsa -f /root/.ssh/id_dsa -N ""

# put key to host
file=/server/scripts/fenfa_key/hostip.txt
sshport=22

for ip in `cat $file`
do
sshpass -p123456 ssh-copy-id -i /root/.ssh/id_dsa.pub "-o StrictHostKeyChecking=no -p$sshport $ip"   # centos 6
#sshpass -p123456 ssh-copy-id -i /root/.ssh/id_dsa.pub -o StrictHostKeyChecking=no  $ip # centos7
done
