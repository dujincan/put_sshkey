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
file=/server/scripts/fenfa_key/hostip.txt
sshport=22
for ip in `cat $file`
do
   echo ===== $ip =====
   ssh -p$sshport $ip $1
   echo ""
done