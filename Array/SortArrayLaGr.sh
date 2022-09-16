#!/bin/bash -x

for (( i=0; i<10; i++ ))
do
	arr[$i]=$((RANDOM%100+100))
done

echo "Array : ${arr[@]}"

for(( i=0; i<10; i++ ))
do
	count=0
	for(( j=0; j<10; j++ ))
	do

		if [ ${arr[i]} -gt ${arr[j]} ]
		then
			let count++
		fi

	done

	if [ $count -eq 8 ]
	then
		echo "${arr[$i]} is second largest number"

	elif [ $count -eq 1 ]
	then
		echo "${arr[$i]} is second smallest number"
	fi

done
