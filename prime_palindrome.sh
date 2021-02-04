#!/bin/bash -x

function isPrime(){
    check=1
    for (( k=2; k<=$(($1/2)); k++ ))
    do
        if [ $(( $1%$k )) -eq 0 ]
        then
            check=0
            break
        fi
    done

    echo $check
}

function get_palindrome() {
    num=$1
    temp=0

    while [ $num -ne 0 ]
    do
        temp=$(( $temp*10 ))
        temp=$(( $temp + ($num%10) ))
        num=$(( $num/10 ))
    done

    echo $temp 
}

read -p "Enter the number: " n

if [ $( isPrime $n ) -eq 1 ]
then
    pal=$( get_palindrome $n )
    if [ $(isPrime $pal ) -eq 1 ]
    then
        echo "$n is prime, it's palindrome $pal is also prime"
    else
        echo "$n is prime, but it's palindrome $pal is not prime"
    fi
else
    echo "$n is not prime"
fi

