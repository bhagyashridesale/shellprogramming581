

#!/bin/bash -x

flag=0;

function addPrimeNumber()
 {
   arr=$1
  for (( i=2; $i<=$num; i++ ))
   do
     if [ $(($num%$i)) -eq 0 ]
      then
	      arr[flag]=$i
	      ((flag++))
	      num=$(($num/$i))
	      ((i--))
      fi
  done
	  echo ${arr[@]}
}

read -p "Enter a number:" num

echo "Array :" "$( addPrimeNumber $((num)))"
