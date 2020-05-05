#!/bin/bash

echo "Homework directory of user"
who | awk '{print $1}'
echo "have regular files"
echo $(ls -R $HOME | wc -l)
echo "have hidden files"
echo $(find $HOME -name '.*' | wc -l)
