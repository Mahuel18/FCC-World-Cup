#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams;")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPO W_GOALS O_GOALS
do
  if [[ $YEAR != "year" ]]
  then

  #get winner_id
  W_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
 
  #if not found
  if [[ -z $W_ID ]]
  then
    #insert winner
    INSERT_WINNER_ID=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')") 
    #get new winner_id
     fi

  #get opponent_id
  OPPO_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPO'")

  #if not found
  if [[ -z $OPPO_ID ]]
  then
    #insert opponent
    INSERT_OPPONENT_ID=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPO')")
    #get new opponent_id
    fi
  W_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPPO_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPO'")
  
 INSERT_INTO_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $W_ID, $OPPO_ID, $W_GOALS, $O_GOALS)")
fi
done

