#!/bin/bash

ATIME=`find mf/ -type f -exec md5sum {} \; | md5sum`
tar -zcvf backup-mf-`date +%Y-%m-%d_%H-%M-%S`.tar.gz mf/

LTIME=$ATIME

while true
do
   ATIME=`find mf/ -type f -exec md5sum {} \; | md5sum`

   if [[ "$ATIME" != "$LTIME" ]]
   then    
       echo "RUN COMMAND"
       tar -zcvf backup-mf-`date +%Y-%m-%d_%H-%M-%S`.tar.gz mf/
       (cd mf/ && make -f Makefile-1 >> ../output1)

       LTIME=$ATIME
   fi
   sleep 5
done

