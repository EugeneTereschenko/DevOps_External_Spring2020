#!/bin/bash

var1=$1
var2=$2
var3=$3

grep -m $var1 -r $var2 -e $var3 | sort | nl
