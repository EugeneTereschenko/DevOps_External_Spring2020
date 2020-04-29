#!/bin/bash

IFS=: read -r -a patharr <<<"$PATH"

echo ${patharr[-1]}

line=$PATH

A="$(cut -d':' -f9 <<<"$line")"

echo "$A"

A=$(awk -F: '{print $9}' <<< "$line"}

echo "$A"
