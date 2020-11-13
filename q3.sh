#! /bin/bash

read n
for ((counter=2;counter*counter<=n;counter++))
do
f=0
for ((c=2;c<counter;c++))
do
check=$((counter%c))
if [[ check -eq 0 ]];
then
f=1
break
fi
done


if [ $f -eq 0 ];
then
check2=$(($n%$counter))
if [ $check2 -eq 0 ]
then
array+=($counter)
fi
fi


done

echo ${array[@]}
