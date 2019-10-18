#!/bin/bash
rand=$RANDOM
secret=${rand:0:1}

function game {
	read -p "Guess a random one-digit number! " guess
        while [[ $guess != $secret ]]; do
                read -p "Nope, try again! " guess
        done
	echo "Good job, $secret is it! You're great at guessing!"
}

function generate {
        echo "A random number is: $rand"
	echo -e "Hint: type \033[1m$0 game\033[0m for a fun diversion!"
}

if [[ $1 =~ game|Game|GAME ]]; then
	game
else
	generate
fi

