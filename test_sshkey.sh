#!/bin/bash
# test ssh key
# jason du
# 2018 10 11
# v1.0

# agrs
if [ $# -ne 1 ]
then
  echo "please input one agrs"
  exit 1
fi

# ssh no passwd test
#for ip in 31 41 7
#do
#   echo ===== info 172.16.1.$ip =====
#   ssh 172.16.1.$ip $1
#   echo ""
#done
while read ip
do
   echo ===== info $ip =====
   ssh $ip $1
   echo ""
done < /server/scripts/fenfa_key/hostip.txt
