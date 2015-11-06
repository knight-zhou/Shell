#!/bin/bash
##对于阿里云不适用
#sshpass -p'passwd' ssh root@192.168.2.4 'hostname'

while read -u3 a && read -u4 b
do
echo $a  $b
#echo $a
#echo $b
#sshpass -p'passwd' ssh root@192.168.2.4 'hostname'

sshpass -p"$b" ssh root@"$a" 'hostname'
#sshpass -p"$b" ssh root@"$a" '/usr/bin/mysql -uroot -p1234567 -e "show databases;"'


#sshpass -p"$b" scp /root/shell_scripts/sql.sh root@"$a":/root
#sshpass -p"$b" ssh root@"$a" '/bin/bash /root/sql.sh'
#sshpass -p"$b" ssh root@"$a" 'date'

done 3<ip.txt 4<mima.txt




