#!/bin/bash

echo -e "\nTree of directory\n"

ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/	/' -e 's/-/|/'

num=`eval ls -R -1 | grep "/" | wc -l`

echo -e "\nnumber of directory: $num\n"

echo -e "\nTree of directory\n"

shopt -s globstar
for file in **/*
do
  if [ -d "$file" ];then
	echo $file
    ((d++))
  elif [ -f "$file" ];then
    ((f++))
  fi
done
echo "number of files: $f"
echo "number of dirs: $d"
