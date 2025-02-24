#!/bin/bash

#read -p "enter username" username

#echo "you entered $username"

<< comment
read -p "enter your age: " age

if [[ $age > 18 ]];
then
        echo "You are eligible to vote"
else
        echo "ur age is less than 18 . u are not eligible to vote"
fi

comment

#function description 

function eligible_to_vote(){
read -p "enter your age: " age

if [[ $age > 18 ]];
then	
	echo "You are eligible to vote"
else 
        echo "ur age is less than 18 . u are not eligible to vote"
fi
}

#function calling

eligible_to_vote
