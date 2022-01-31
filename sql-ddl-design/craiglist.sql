--psql < craiglist.sql

DROP DATABASE IF EXISTS craiglist;

CREATE DATABASE craiglist;

\c craiglist;

CREATE TABLE region
(
  id SERIAL PRIMARY KEY,
  region_name text not null
  
);

CREATE TABLE username
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL
);

CREATE TABLE categories
(
  id SERIAL PRIMARY KEY,
  category text not null
  
);

CREATE TABLE post
(
  id SERIAL PRIMARY KEY,
  title text not null,
  contant text not null,
  username_id integer references username,
  region_id integer references region,
  category_id integer references categories
);

