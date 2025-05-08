# Build a World Cup Database
This is one of the required projects to earn your certification. For this project, you will create a Bash script that enters information from World Cup games into PostgreSQL, then query the database for useful statistics.

This course runs in a virtual Linux machine using Gitpod. Follow these instructions to start the course:

1. Create a GitHub account if you don't have one
2. Click the start button below
3. Login to Gitpod with your GitHub account if you aren't already
4. Once the virtual Linux machine is finished loading, start the CodeRoad extension by:
- Clicking the "hamburger" menu near the top left of the VSCode window,
- Going to the "View" menu,
- Clicking on the "Command Palette" option,
- and running the "CodeRoad: Start" command
5. Follow the instructions in CodeRoad to complete the course
## Complete the tasks below

- You should create a database named worldcup
- You should connect to your worldcup database and then create teams and games tables
- Your teams table should have a team_id column that is a type of SERIAL and is the primary key, and a name column that has to be UNIQUE
- Your games table should have a game_id column that is a type of SERIAL and is the primary key, a year column of type INT, and a round column of type VARCHAR
- Your games table should have winner_id and opponent_id foreign key columns that each reference team_id from the teams table
- Your games table should have winner_goals and opponent_goals columns that are type INT
- All of your columns should have the NOT NULL constraint
- Your two script (.sh) files should have executable permissions. Other tests involving these two files will fail until permissions are correct. When these permissions are enabled, the tests will take significantly longer to run
- When you run your insert_data.sh script, it should add each unique team to the teams table. There should be 24 rows
- When you run your insert_data.sh script, it should insert a row for each line in the games.csv file (other than the top line of the file). There should be 32 rows. Each row should have every column filled in with the appropriate info. Make sure to add the correct ID's from the teams table (you cannot hard-code the values)
- You should correctly complete the queries in the queries.sh file. Fill in each empty echo command to get the output of what is suggested with the command above it. Only use a single line like the first query. The output should match what is in the expected_output.txt file exactly, take note of the number of decimal places in some of the query results
  
Complete both steps below to finish the challenge.

## Step 1: Complete the project

The project runs in a virtual machine, complete the user stories described in there and get all the tests to pass to finish step 1.

Important: After you pass all the project tests, save a dump of your database into a worldcup.sql file, as well as your insert_data.sh and queries.sh files, so you can complete step 2. There will be instructions how to do that within the virtual machine.

## Step 2: Submit your code

When you have completed the project, save all the required files into a public repository and submit the URL to it below.

Required files: worldcup.sql, insert_data.sh, queries.sh
