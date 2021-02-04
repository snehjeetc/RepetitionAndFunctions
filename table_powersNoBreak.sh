#!/bin/bash -x

read -p "Enter the number: " n

result=1
k=1
while [ $result -le $((2 ** $n)) ]
do
    result=$((2**$k))
    ((k++))
done
