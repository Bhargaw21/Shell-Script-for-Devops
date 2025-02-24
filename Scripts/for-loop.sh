#!/bin/bash

#this is For and While loop

for ((num=1 ; num<=5 ; num ++));
do
	mkdir "demo$num"
done

# while loop

num = 0
while[[ $num -le 5 ]]
do
	echo "lol"
	num = $num + 1
done	
