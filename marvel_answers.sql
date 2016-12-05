
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

-- in answer to question 
UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';