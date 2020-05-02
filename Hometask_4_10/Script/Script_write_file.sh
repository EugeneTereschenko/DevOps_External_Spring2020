#!/bin/bash

while [ true ]
do

date +'%m/%d/%Y %T' > /home/usr/tmp/"$(date +"%Y_%m_%d_%I_%M_%p").log"
ps -ef | wc -l >> /home/usr/tmp/"$(date +"%Y_%m_%d_%I_%M_%p").log"

sleep 60
done
