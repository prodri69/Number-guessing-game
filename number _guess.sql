
psql --username=freecodecamp --dbname=postgres
#Create a number_guess database to hold the information suggested in the user stories
CREATE DATABASE number_guess
\c number_guess
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(22) NOT NULL UNIQUE
);
CREATE TABLE games (
    game_id SERIAL PRIMARY KEY,
    number_of_attempts INT NOT NULL,
    user_id INT REFERENCES users(user_id)
);

#Create a number_guessing_game folder in the project folder for your program
mkdir number_guessing_game
touch number_guess.sh
chmod +x number_guess.sh
git int
git add .
git commit -m "Initial commit"
git checkout -b main
git add .
git commit -m "feat: Inserting username into db"
git add .
git commit -m "fix: fixing if statement conditionals"
git add .
git commit -m "feat: adding random number variable"
git add .
git commit -m "test: testing script"
