#!/bin/bash -x 

function primeInRange(){
    if [ $1 -eq 1 ]
    then 
        k=2
    else
        k=$first
    fi

    while [ $k -le $2 ]
    do
        check=1
        for (( i=2; i<=$(($k/2)); i++ ))
        do
            if [ $(($k%$i)) -eq 0 ] 
            then
                check=0
                break
            fi
        done

        if [ $check -eq 1 ]
        then
            echo -n $k" "
        fi
        ((k++))
    done
}

read -p "Enter the range [first - last] " first last
primeInRange $first $last
