#!/bin/bash -x

bal=100
gambling_prize=5
bet_place=1

while [[ 0 -lt $bal && $bal -lt 200 ]]
do
    if [ $(( RANDOM%2 )) -eq 1 ]
    then
        bal=$(( $bal + $bet_place * $gambling_prize ))
    else
        bal=$(( $bal - $bet_place ))
    fi
done

echo $bal
