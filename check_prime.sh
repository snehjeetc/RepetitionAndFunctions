#!/bin/bash -x

read -p "Enter the number : " num
check=1
for (( k=2; k<=$(($num/2)); k++ ))
do
    if [ $(($num%$k)) -eq 0 ] 
    then 
        check=0
        break
    fi
done

if [ $check -eq 1 ]
then
    echo "$num is a prime number"
else
    echo "$num is not a prime number"
fi

