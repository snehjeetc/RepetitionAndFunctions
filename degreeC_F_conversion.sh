#!/bin/bash -x

function convert_deg_unit(){
    case $2 in
        C) 
            res=`echo "scale=4; $1 * (9/5) + 32 " | bc`
            ;;
        F)
            res=`echo "scale=4; ($1 - 32) * (5/9) " | bc`
            ;;
    esac

    echo $res
}

function check_range(){
    magnitude=$1
    unit=$2
    case $unit in
        F)
            if [[ $magnitude -ge 32 && $magnitude -le 212 ]]
            then
                echo 1
            else
                echo 0
            fi
            ;;
        C)
            if [[ $magnitude -ge 0 && $magnitude -le 100 ]]
            then
                echo 1
            else
                echo 0
            fi
            ;;
        *)
            echo -1
    esac
}

read -p "Enter the magnitude and unit of temperature (C/F) [Accepted Range(0 C/32 F) & (100 C/212 F) ]: " magnitude unit

check="$( check_range $magnitude $unit )"
if [[ $check -eq -1 ]]
then
    echo "Wrong unit"
    exit -1
elif [[ $check -eq 0 ]]
then
    echo "NOt in range"
    exit 1
else
    res=`( convert_deg_unit $magnitude $unit )`
    echo $res
fi

