#!/bin/bash


while [ -n "$1" ]
do
var=$(($1*$1))
echo "Square of $1 = $var"
shift
done
