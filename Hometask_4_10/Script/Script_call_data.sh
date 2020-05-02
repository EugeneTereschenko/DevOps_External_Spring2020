#!/bin/bash


while :
do

read -p "Enter a word: " word
echo -e "You entered $word"

if [[ "$word" == "quit" ]]
then
	break
fi

done
