#! /bin/bash

count=10
while [ $count -le 100 ]
do
check=$(($count%11))
if [ $check -eq 0 ];
then
array+=($count)
fi
((count++))
done
echo ${array[@]}
