CREATE SCHEMA br;

-- create a 'book' table to represent book objects;
-- books are defined by a title and author
-- neither of which can be null
CREATE TABLE br.book (
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	author_id INT NOT NULL
);

-- create an 'author' table to represnt authors;
-- authors are defined by a first, middle, and last name
-- with last name being the only hard requirment
CREATE TABLE br.author (
	author_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	middle_name VARCHAR(50),
	last_name VARCHAR(50) NOT NULL
);

-- create a 'reader' table to represent readers;
-- readers are defined by a username which cannot be null
CREATE TABLE br.reader (
	reader_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL
);

-- create a 'rating' table to represent a rating;
-- ratings are a relationship between a book and reader
-- with an "rating" values: 0.5, 1, 1.5, 2, ..., 4.5, 5.
-- We enforce this by allowing integer values between
CREATE TABLE br.rating (
	rating_id SERIAL PRIMARY KEY,
	book_id INT NOT NULL,
	reader_id INT NOT NULL,
	rating NUMERIC NOT NULL CHECK (rating between 0 and 5)
);

-- create a 'genre' table as a value set
-- for the possible genre's that can exist.
CREATE TABLE br.genre (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(50)
);