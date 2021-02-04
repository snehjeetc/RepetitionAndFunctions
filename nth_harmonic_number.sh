#!/bin/bash -x

read -p "Enter the value of n" n

sum=0
for (( k=1; k<=$n; k++ ))
do
    sum=`echo "scale=4; $sum + ( 1 / $k) " | bc`
done

echo "($n)th Harmonic number is $sum"

