#!/bin/bash

filename=/etc/passwd
declare -a myArray
myArray=(`cat "$filename"`)
len=${#myArray[@]}
for (( i = 0 ; i < len ; i++))
do
  echo "Element [$i]: ${myArray[$i]}"
done
