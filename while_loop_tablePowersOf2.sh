#!/bin/bash -x
read -p "Enter the number : " n
limit=256
result=1
k=0
while [ $k -le $n ]
do 
	result=$((2 ** $k));
    ((k++))
    if [ $result -ge $limit ] 
    then
        break
    fi
done

