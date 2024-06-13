#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t -c"

#==SHOWING USERNAME==
echo "Enter your username:"
read USERNAME

USERNAME_RESULT=$($PSQL "SELECT username, COUNT(game_id) as game_played, MIN(number_of_guesses) as best_game FROM players FULL JOIN games USING(player_id) WHERE username='$USERNAME' GROUP BY username")
if [[ -z $USERNAME_RESULT ]]
then
  INSERT_PLAYER_RESULT=$($PSQL "INSERT INTO players(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "$USERNAME_RESULT" | while read USERNAME BAR GAME_PLAYED BAR BEST_GAME
  do
    echo "Welcome back, $USERNAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

#==Printing Random Number==
SECRET_NUMBER=$(($RANDOM % 1000 + 1))
echo "Guess the secret number between 1 and 1000:"
read PLAYER_GUESS

if [[ ! $PLAYER_GUESS =~ ^[0-9]+$ ]]
then
  echo "That is not an integer, guess again:"
  read PLAYER_GUESS
fi

#==Showing Clue for secret number every turn==
COUNT=1
while [ $PLAYER_GUESS != $SECRET_NUMBER ]
do
  if [[ $PLAYER_GUESS < $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
    read PLAYER_GUESS
    if [[ ! $PLAYER_GUESS =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
      read PLAYER_GUESS
    fi
    ((COUNT++))
  else 
    echo "It's lower than that, guess again:"
    read PLAYER_GUESS
    if [[ ! $PLAYER_GUESS =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
      read PLAYER_GUESS
    fi
    ((COUNT++))
  fi
done

#==Showing success message after guessing secret number==
echo "You guessed it in $COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username='$USERNAME'")
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(secret_number,number_of_guesses,player_id) VALUES($SECRET_NUMBER,$COUNT,$PLAYER_ID)")