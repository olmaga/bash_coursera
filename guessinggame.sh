#!/usr/bin/env bash

function countFiles {
	echo $(($(ls -l | wc -l | xargs) - 1))
}

# first we the count the actual amount of files in the directory
correct=$(countFiles)

guess=-1

while [[ $guess -ne $correct ]]
do
	# lets get a guess from the user
	read -p "How many files are in this directory? " guess

	if [[ $guess -lt $correct ]]
	then
		echo "Your guess was too low"
	fi

	if [[ $guess -gt $correct ]]
	then	
		echo "Your guess was too high"
	fi
done

echo "Congrats - $guess is the correct answer."