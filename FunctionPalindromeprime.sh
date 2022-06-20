#! /bin/bash/ -x

read -p "enter any number to check whether it is palindrome or not > " no
number=$no
function palindrome()
{
        rev=0
        rem=0
        while [ $no -gt 0 ]
        do
                rem=$(( $no%10 ))
                no=$(( $no/10 ))
                rev=$(( ($rev*10)+$rem ))
        done
        echo $rev
}
function prime()
{
	prime=0
	for(( count=2; count<=$(( $number/2 )); count++ ))
	do
		if [ $(( $number%count )) -eq 0 ]
		then
			prime=1
		fi
	done
	echo $prime
}
palindromestatus=$( palindrome $no )
primestatus=$( prime $number )
if [ $palindromestatus -eq $number ]
then
	if [ $primestatus -eq 0 ]
	then
        	echo $number" is a palindrome and prime"
	else
		echo $number" is a palindrome but not prime"
	fi
elif [ $primestatus -eq 0 ]
then
	echo $number" is prime but not palindrome"
else
        echo $number" is neither a palindrome nor prime"
fi
