#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# clear the tables
echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # skip the 1st row
  if [[ $YEAR != year ]]
  then
    # get winner_team_id
    WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    # if not found
    if [[ -z $WINNER_TEAM_ID ]]
    then
      # insert team
      echo $($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi

    # get new winner_team_id
    WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    
    # get opponent_team_id
    OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # if not found
    if [[ -z $OPPONENT_TEAM_ID ]]
    then
      # insert team
      echo $($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi

    # get new opponent_team_id
    OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  
    # insert game with winner and opponent id's
    echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$YEAR', '$ROUND', '$WINNER_TEAM_ID', '$OPPONENT_TEAM_ID', '$WINNER_GOALS', '$OPPONENT_GOALS')")
  fi
done