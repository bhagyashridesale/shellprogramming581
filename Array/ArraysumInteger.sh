#!/bin/bash -x

size=6
arr=( -3 -2 -1 1 2 3 )


for (( i=0; i<$size-2; i++ ))
do
	for (( j=$i+1; j<$size-1; j++ ))
   	do
      		for (( k=$j+1; k<$size; k++ ))
      		do
         		sum=$(($((${arr[i]}+${arr[j]}))+${arr[k]}))
         			if [ $sum -eq 0 ]
         			then
            				echo "Elements: " ${arr[i]},${arr[j]},${arr[k]}
            				echo "Sum of three element = $sum"
         			fi

      		done
   	done
done
