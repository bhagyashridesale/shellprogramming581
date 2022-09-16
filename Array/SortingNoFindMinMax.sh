#!/bin/bash -x
size=10;
index=0;
declare -a array;
while [ $index -lt  $size ]
do
      array[$index]=$(( (RANDOM%100) + 100 )) ;  
      ((index++));
done
 echo "${array[@]}"

largest=${array[0]}
secondGreatest='unset'

for((i=1; i < ${#array[@]}; i++))
  do
      if [[ ${array[i]} > $largest ]]
        then
	secondGreatest=$largest
	largest=${array[i]}
       elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
          then
	secondGreatest=${array[i]}
        fi
   done
echo "secondGreatest = $secondGreatest"

smallest=${array[0]}
secondSmallest='unset'

for((i=1; i < ${#array[@]}; i++))
  do
      if [[ ${array[i]}< $smallest ]]
         then
	secondSmallest=$smallest
       elif (( ${array[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${array[i]} < $secondSmallest ]]; }
           then
	secondSmallest=${array[i]}
          fi
  done
echo "secondSmallest = $secondSmallest"
