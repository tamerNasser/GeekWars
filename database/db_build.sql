BEGIN;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS qa CASCADE;
DROP TABLE IF EXISTS leaderboard CASCADE;

CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(40) NOT NULL,
  password VARCHAR(200) NOT NULL,
  score TEXT DEFAULT 0
  );

CREATE TABLE IF NOT EXISTS qa (
  id SERIAL PRIMARY KEY,
  qustion TEXT NOT NULL,
  answer TEXT NOT NULL,
  option1 TEXT NOT NULL,
  option2 TEXT NOT NULL,
  option3 TEXT NOT NULL
  );


CREATE TABLE IF NOT EXISTS leaderboard (
  id SERIAL PRIMARY KEY,
  username_id INTEGER REFERENCES users(id) ON UPDATE CASCADE,
  questions_solved TEXT NOT NULL
  );

COMMIT;
