#! /bin/bash/ 

flip=0
hwin=0
twin=0
while [ $hwin -lt 11 ] || [ $twin -lt 11 ]
do
	i=1
	random=$RANDOM;
	flip[$i]=$(( $random%2 ))
	if [ ${flip[$i]} -eq 1 ]
	then
		hwin=$(( $hwin+1 ))
	else
		twin=$(( $twin+1 ))
	fi
	i=$(( $i+1 ))
done

if [ $hwin -eq 11 ]
then
	echo "Heads has won 11 times"
else
	echo "Tails has won 11 times"
fi

