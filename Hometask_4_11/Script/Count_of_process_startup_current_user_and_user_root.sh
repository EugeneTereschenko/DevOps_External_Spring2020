#!/bin/bash

var=$(who | awk '{print $1}')
echo "Process of user"
echo $var
ps -u $var | wc -l

echo "Process of user root"
ps -u root | wc -l
