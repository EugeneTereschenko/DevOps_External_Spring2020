#!/bin/bash

read -p "Enter string characters: " StringTemp
read -p "Enter character: " Var

echo $StringTemp | awk 'NF+=0' FS= OFS='\n' | awk '/'$Var'/{print NR}'
