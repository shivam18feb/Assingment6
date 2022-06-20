#! /bin/bash/ -x

cash=100
goal=200
bet=0
win=0
while [ $cash -gt 0 ] && [ $cash -lt $goal ]
do
	bet=$(( $bet+1 ))
	i=1
	random=$RANDOM
	trial[$i]=$(( $random%2 ))
	if [ ${trial[$i]} -eq 1 ]
	then
		cash=$(( $cash+1 ))
		win=$(( $cash+1 ))
	else
		cash=$(( $cash-1 ))
	fi
	i=$(( $i+1 ))
done


echo "Number of times won > "$win
echo "NUmber of bets made > "$bet
