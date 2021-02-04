#!/bin/bash -x

read -p "Enter the number: " num

fac=1
for (( k=1; k<=$num; k++ ))
do
    fac=$(($fac * $k ))
done
echo "($num)! = $fac"
