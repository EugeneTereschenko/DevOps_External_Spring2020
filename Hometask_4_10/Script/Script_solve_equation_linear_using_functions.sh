#!/bin/bash

function myfunc {

var4=$[($1 + $2)/$3]
echo "$var4"

}
if [ $# -eq 3 ]
then
value=$(myfunc $1 $2 $3)
echo "The result is $value"
else
echo "Usage: myfunc a b"
fi
