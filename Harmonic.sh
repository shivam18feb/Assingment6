#! /bin/bash
n=$1;
for (( count=1 ; count <=n; count++))
do
  if [ $count -eq $n ]
  then
    printf "1/%s " $count;
  else    
   printf "1/%s + " $count;
  fi
done
