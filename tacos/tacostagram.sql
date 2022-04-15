DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS stats;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS follows;

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  screen_name TEXT,
  real_name TEXT,
  location TEXT
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  content TEXT,
  poster_id INTEGER
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  post_id INTEGER,
  liker_id INTEGER
);

CREATE TABLE stats (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  number_likes INTEGER,
  user_id TEXT
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  contents TEXT,
  post_id INTEGER
  commentor_id INTEGER
);

CREATE TABLE follows (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  follower_id INTEGER,
  followee_id INTEGER
);