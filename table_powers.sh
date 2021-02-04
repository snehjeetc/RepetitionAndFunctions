#!/bin/bash -x
read -p "Enter the number : " n
limit=256
result=1
for (( k=0; k<=$n; k++ ))
do 
	result=$((2 ** $k));
    if [ $result -ge $limit ] 
    then
        break
    fi
done
