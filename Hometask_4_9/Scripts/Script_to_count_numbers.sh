#!/bin/bash

var1=$1
var2=$2
var3=$3

echo -e "Result of operation variable1 plus variable2 divided on variable3 equally"

echo "scale = 10; ($var1+$var2)/$var3" | bc

