
-- In answer to question 1
SELECT * FROM movies;

-- In answer to question 2
SELECT name FROM people;

-- In answer to question 3
SELECT name FROM people WHERE name = 'Andrew Guppy';

-- In answer to question 4
DELETE FROM movies WHERE title = 'Batman Begins';

-- in answer to question 5
INSERT INTO people (name) VALUES ('Simon Douglas');

-- in answer to question 6
DELETE FROM people WHERE name = 'Craig Morton';

-- in answer to question 7
UPDATE people SET name = 'Andy Guppy' WHERE name = 'Andrew Guppy';

-- in answer to question 8
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2016, '00:00');

-- in answer to question 9
UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';

-- enhanced homework

--delete  from movies table id's 7,8,9,10 and 11
DELETE FROM movies WHERE id BETWEEN 7 AND 11;
SELECT * FROM movies;

--Delete all duplicates 'Simon Dougas' from people 
-- insert some Simon Douglas dodgey characters
INSERT INTO people (name) VALUES ('Simon Douglas'),('Simon Douglas'),('Simon Douglas'),('Simon Douglas'),('Simon Douglas'),('Simon Douglas');
-- demonstrate they exist
SELECT * FROM people;
-- delete duplicates
DELETE FROM people WHERE id NOT IN (SELECT min(id) FROM people GROUP BY name);
-- show  they are gone
SELECT * FROM people;

--After running the answers script several times Guardians of the Galaxy 2 has been inserted multiple times, this will Delete all duplicates 'Guardians of the Galaxy 2' from movies
-- demonstrate they exist
SELECT * FROM movies;
-- delete duplicates
DELETE FROM movies WHERE id NOT IN (SELECT min(id) FROM movies GROUP BY title);
-- show  they are gone
SELECT * FROM movies;