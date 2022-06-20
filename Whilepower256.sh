#!/bin/bash -x

#! /bin/bash

read -p "Enter number" n;
pow=1;
count=0;
while [ $pow != 256  ] && [ $count -lt $n  ]
do
  pow=$((2**$count));
  count=$(( $count+1 ));
  echo "$pow";
done

