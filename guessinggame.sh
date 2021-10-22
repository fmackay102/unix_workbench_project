#!/usr/bin/env bash
# File: guessinggame.sh

#function to determine if guess is too high or low 
# args 1) guess 2)answer
function checkGuess {

	if [[ $1 -gt $2 ]]
	then
		echo "Your guess is too high, guess again and press Enter:"
	elif [[ $1 -lt $2 ]]
	then
		echo "Your guess is too low, guess again and press Enter:"
	fi

}

#prompt response from user
echo "How many files are in this directory?"
echo "Type in a guess, then press Enter:"
read guess

#get correct answer
answer=$(ls | wc -l)

#loop until correct response 
while [[ $guess -ne $answer ]]
do
	#invoke function
	checkGuess guess answer
	read guess
done

#once correct response has been entered congratulate user and exit 
echo "Well done! There are $answer files in this directory!"

