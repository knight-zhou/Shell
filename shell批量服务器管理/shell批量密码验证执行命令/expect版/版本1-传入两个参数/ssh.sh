#!/bin/bash
for i in `awk '{print $1}' passwd.txt`
do
j=`awk -v I="$i" '{if(I==$1)print $2}' passwd.txt`

#expect /root/shell_scripts/bb/cc/login.exp $i $j
expect login.exp $i $j
done
