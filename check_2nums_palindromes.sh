#!/bin/bash -x

function check_palindrome() {
	num1=$1
	temp=0
	while [ $num1 -ne 0 ]
	do
		temp=$(($temp*10))
		temp=$(($temp + $num1%10))
	
		num1=$(($num1/10))
	done
	if [ $temp -eq $2 ]
	then 
		return 0
	else
		return 1
	fi
}

if check_palindrome $((RANDOM%1000)) $((RANDOM%1000))
then 
    echo "The number is palindrome"
else
    echo "The number is not palindrome"
fi
