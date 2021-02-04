#!/bin/bash -x

head_count=0
tail_count=0

while [[ $head_count -le 11  && $tail_count -le 11 ]]
do 
    var=$(( RANDOM%2 ))
    if [ $var -eq 0 ]
    then
        ((head_count++))
    else
        ((tail_count++))
    fi
done

if [ $head_count -gt $tail_count ]
then
    echo "Head wins"
else
    echo "Tail wins"
fi
