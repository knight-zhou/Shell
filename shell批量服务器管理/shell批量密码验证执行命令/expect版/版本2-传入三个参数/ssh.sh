#!/bin/bash
for i in `awk '{print $1}' passwd.txt`
do
j=`awk -v I="$i" '{if(I==$1)print $2}' passwd.txt`
export cmdfile="config/commands.txt"

#expect /root/shell/login.exp $i $j
#expect /root/shell_scripts/bb/login.exp $i $j $cmdfile 
expect login.exp $i $j $cmdfile 
done
