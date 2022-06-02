#!/bin/bash
ind=0
read -p "Enter a number:" n

for(( i=2; i<=n/2; i++))
do	
	if((n%i==0))
	then
		arr[ind]=$i
		((ind++))
	fi
done
echo "The prime factors of $n are"
echo  ${arr[@]}
