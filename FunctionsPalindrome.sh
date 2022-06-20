
#! /bin/bash/ -x

read -p "enter any number > " no
read -p "enter other number to check" number
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
palindromestatus=$( palindrome $no )
if [ $palindromestatus -eq $number ]
then
	echo "They both are palindromes"
else
	echo "They both are not palindromes"
fi

