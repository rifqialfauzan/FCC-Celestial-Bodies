#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  # Check if the argument is number
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    #if it is, query to db and get the details
    ATOMIC_NUMBER_RESULT=$($PSQL "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE atomic_number='$1'")
    echo "$ATOMIC_NUMBER_RESULT" | while read TYPE_ID BAR ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR ATOMIC_MASS BAR MELTING_POINT BAR BOILING_POINT BAR TYPE
    do
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
    done
  else
    #if not, query to db using argument 2 times(with symbol and with name)
    SYMBOL_RESULT=$($PSQL "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE symbol='$1'")
    NAME_RESULT=$($PSQL "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE name='$1'")
  
    #check query result with symbol. If query success then display the details
    if [[ $SYMBOL_RESULT ]]
    then
      echo "$SYMBOL_RESULT" | while read TYPE_ID BAR ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR ATOMIC_MASS BAR MELTING_POINT BAR BOILING_POINT BAR TYPE
      do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
      done
    
    #if query with symbol fail, check the result with name. If it success then display the details
    else if [[ $NAME_RESULT ]]
    then
      echo "$NAME_RESULT" | while read TYPE_ID BAR ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR ATOMIC_MASS BAR MELTING_POINT BAR BOILING_POINT BAR TYPE
      do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
      done

    #If both query fails, then display
    else
      echo "I could not find that element in the database."
    fi
  fi
  fi
fi