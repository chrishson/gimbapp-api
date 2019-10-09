CREATE TABLE vocab(
   id serial PRIMARY KEY,
   korean text NOT NULL,
   english text NOT NULL,
   lesson_id varchar(32)
);

CREATE TABLE lessons(
   id serial PRIMARY KEY,
   lesson_name varchar(50) NOT NULL,
   user_id varchar(32) NOT NULL
);

CREATE TABLE users(
   id serial PRIMARY KEY,
   username varchar(50) NOT NULL,
   email varchar(100) NOT NULL,
   password varchar(100) NOT NULL
);
