#!/bin/bash

# 禁用ssh密码登录

file=/server/scripts/fenfa_key/hostip.txt

for ip in `cat $file`
do
    echo ===== host $ip =====
    ssh $ip "sed -i 's#PasswordAuthentication yes#PasswordAuthentication no#g' /etc/ssh/sshd_config && /etc/init.d/sshd restart"
    #ssh $ip "sed -i 's#PasswordAuthentication no#PasswordAuthentication yes#g' /etc/ssh/sshd_config && /etc/init.d/sshd restart"
    echo ""
done