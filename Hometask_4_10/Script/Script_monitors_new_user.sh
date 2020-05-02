#!/bin/bash

declare -a initialArray
declare -a changedArray
declare -a diffArray
filename=/etc/passwd
initialArray=(`cat "$filename"`)
LTIME=`stat -c %Z $filename`

diff(){
  awk 'BEGIN{RS=ORS=" "}
       {NR==FNR?a[$0]++:a[$0]--}
       END{for(k in a)if(a[k])print k}' <(echo -n "${!1}") <(echo -n "${!2}")
}


while true    
do
   ATIME=`stat -c %Z $filename`
   if [[ "$ATIME" != "$LTIME" ]]
   then    
       echo "RUN COMMAND"

       changedArray=(`cat "$filename"`)
       diffArray=($(diff initialArray[@] changedArray[@] ))
       initialArray=("${changedArray[@]}")

       echo "${diffArray[@]}" | cut -d: -f1,3 >> /var/log/test.log

       LTIME=$ATIME
   fi
   sleep 30
done
