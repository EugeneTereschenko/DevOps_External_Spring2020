#!/bin/bash

var1=$1
var2=$2

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

if [[ "$3" =~ ^[[:digit:]]+$ ]]; then
    echo "Your enter extra argument"
    exit
fi

if [ -z "$" ]
  then
    echo "No argument supplied"
fi

if [[ $var1 -gt $var2 ]]
then
    echo "The $var1 is greater than $var2."
elif [[ $var1 -eq $var2 ]]
then
    echo "The $var1 is equal to $var2."
else
    echo "The $var1 is less than $var2."
fi
