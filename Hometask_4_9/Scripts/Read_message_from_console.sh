#!/bin/bash

echo -e "Input word to the console, followed by [ENTER]:\n"

read word

echo $word

echo -n "chars: ";
echo -n $word | wc -c;
