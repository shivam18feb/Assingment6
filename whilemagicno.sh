#! /bin/bash/ -x

read -p "enter a number" n
number=$n
sum=0
rev=0
while [ $number -gt 0 ]
do
	sum=$(( $sum+($number%10) ))
	number=$(( $number/10 ))
done

number=$sum
while [ $number -gt 0 ]
do
	rev=$(( ($rev*10)+($number%10) ))
	number=$(( $number/10 ))
done


if [ $(( $rev*$sum )) -eq $n ]
then
	echo $n" is a magic number"
else
	echo $n" is not a magic number"
fi
