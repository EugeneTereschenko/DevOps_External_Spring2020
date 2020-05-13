#!/bin/bash

while read line;
do var1=$(echo $line | cut -f2 -d' ')
var2=$(openssl rand -base64 8)

sudo useradd -m $var1 -p $var2
echo $var1:$var2 | sudo chpasswd

touch $var1-login-password.txt
echo $var2 > $var1-login-password.txt 
done < users.txt
