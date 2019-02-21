#!/bin/bash
# fanfa key
# jaosn du
# 2018 10 11
# v1.0

password=111111
hostip=/etc/ansible/put_sshkey/hostip.txt
sshport=22
yum install -y sshpass
# rm old key
rm -f /root/.ssh/id_dsa*

# create new key
ssh-keygen -t dsa -f /root/.ssh/id_dsa -N ""

# put key to host


for ip in `cat $hostip`
do
#sshpass -p$password ssh-copy-id -i /root/.ssh/id_dsa.pub "-o StrictHostKeyChecking=no -p$sshport $ip"   # centos 6
sshpass -p$password ssh-copy-id -i /root/.ssh/id_dsa.pub -o StrictHostKeyChecking=no  $ip # centos7
done
