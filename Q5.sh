#!/bin/bash
add=0
echo "Enter the three values:"
for((i=0;i<3;i++))
do
	read array[i]
	add=$(( add + array[i]))
done
echo  "sum of the digits is:"
echo $add
