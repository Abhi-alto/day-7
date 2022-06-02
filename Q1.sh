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

sm=${ar[0]}
f=0
for (( i=1; i<10; i++ ))
do
	if [[ $sm -gt ${ar[$i]} || $sm -eq ${ar[$i]} ]]
	then
		sm=${ar[$i]}
		f=$i
	fi
done

sm2=${ar[0]}
for (( i=1; i<10; i++ ))
do
	if [ ${ar[$i]} -eq ${ar[$f]} ]
	then
		continue
	elif [[ $sm2 -gt ${ar[$i]} || $sm2 -eq ${ar[$i]} ]]
	then
		sm2=${ar[$i]}
	fi
done
echo "Second smallest number without sorting $sm2 "
