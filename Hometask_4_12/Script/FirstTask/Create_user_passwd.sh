#!/bin/bash

while read line;
do var1=$(echo $line | cut -f2 -d' ')
touch $var1-login-password.txt
openssl rand -base64 8 > $var1-login-password.txt 
done < users.txt
