#! /bin/bash

for ((counter=1;counter<=10;counter++))
do
a=$((RANDOM%9+1))
b=$((RANDOM%9))
c=$((RANDOM%9))
num=$(($a*100+$b*10+$c))
echo $num
array+=($num)
done
echo ${array[@]}
for ((counter=1;counter<${#array[@]};counter++))
do 
if [[ ${array[0]}<${array[counter]} ]]
then 
temp=${array[0]}
array[0]=${array[counter]}
unset -v array[counter]
array[counter]=$temp
fi
done

for ((counter=2;counter<${#array[@]};counter++))
do
if [[ ${array[1]}<${array[counter]} ]]
then
temp=${array[1]}
array[1]=${array[counter]}
array[counter]=$temp
fi
done

echo "2nd largest number is ${array[1]}"
