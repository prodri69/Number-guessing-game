#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read username

NAME=$($PSQL "SELECT username FROM Users WHERE username='$username'")

if [[ -z $NAME ]]; then
    INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$username')")
    echo "Welcome, $username! It looks like this is your first time here."
else
    echo "Welcome back, $username! You have played <games_played> games, and your best game took <best_game> guesses."
fi

random_number=$((1 + $RANDOM % 100))
GUESS=1

echo "Guess the secret number between 1 and 1000:"

while read GUESSING; do
    if [[ ! $GUESSING =~ ^[0-9]+$ ]]; then
        echo "That is not an integer, guess again:"
    else
        if [[ $GUESSING -eq $random_number ]]; then
            echo "You guessed it in $GUESS tries. The secret number was $random_number. Nice job! "
            break
        else
            if [[ $GUESSING -gt $random_number ]]; then
                echo "It's lower than that, guess again:"
            else
                echo "It's higher than that, guess again:"
            fi
        fi
    fi
    GUESS=$(( $GUESS + 1 ))
done
 if [[ $GUESS == 1 ]]
  then
   echo "You guessed it in $GUESS tries. The secret number was $random_number. Nice job!"
  fi
