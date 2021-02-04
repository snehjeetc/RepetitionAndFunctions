#!/bin/bash -x

read -p "Chose a number between 1-100: " num

echo "Let me guess which number is this"

k=50
low=1
high=100
while [ $low -lt $high ]
do
    k=$(( ($high + $low)/2))
    read -p "is $k the number (y/n)" ch
    if [ $ch == 'y' ]
    then
        echo $k
        break
    fi

    read -p "is $k high? (y/n)" ch
    case $ch in
        y)
            high=$k
            ;;
        n)
            low=$k
            ;;
        *)
            echo "Wrong Choice entered"
            ;;
    esac
done
            
