USE codeup_test_db;

DELETE
FROM albums
WHERE release_date > 1991;

DELETE
FROM albums
WHERE  genre = 'disco';


DELETE
FROM albums
WHERE artist = 'Whitney Houston';


SELECT release_date AS 'release date > 1991'
FROM albums
WHERE release_date > 1991;

SELECT name AS 'genre disco'
FROM albums
WHERE  genre = 'disco';


SELECT name AS 'Albums by Whitney Houston'
FROM albums
WHERE artist = 'Whitney Houston';


