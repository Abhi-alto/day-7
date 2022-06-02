#!/bin/bash
read -p "Enter a starting of the range from 0-100 : " x 
read -p "Enter end of the range 0-100: " y
ind=0
for(( i=x; i<=y; i++ ))
do
	f=$(( $i % 10 ))
	s=$(( $i / 10 ))
	if [ $f == $s ]
	then
		ar[ind]=$i
		((ind++))
	fi
done 
echo ${ar[@]}
