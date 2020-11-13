#! /bin/bash

for (( c=1;c<=10;c++ ))
do
a=$[ ( $RANDOM % 9 )  + 1 ]
b=$((RANDOM%10))
c=$((RANDOM%10))
num=$(($a*100+$b*10+$c))
echo $num
done
