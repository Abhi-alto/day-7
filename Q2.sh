#!/bin/bash
for (( i=0; i<10; i++ ))
do
	a=$(( RANDOM % 1000 * 1 ))
	if [ $a -lt 100  ]
	then
		while [ $a -lt 100 ]
		do
			a=$(( RANDOM % 1000 + 100 ))
		done
	fi
	ar[$i]=$a
done
echo " Array elements"
echo "${ar[@]}"
for (( i=0; i<=9; i++ ))
do
	for (( j=0; j<9; j++ ))
	do
		l=$(( $j + 1 ))
		if [ ${ar[$j]} -gt ${ar[$l]} ]
		then
			k=${ar[$j]}
			ar[$j]=${ar[$l]}
			ar[$l]=$k
		fi
	done
done
echo "New array - ${ar[@]}"
echo "second smallest element is - ${ar[1]}"
echo "second largest element is - ${ar[8]}"
