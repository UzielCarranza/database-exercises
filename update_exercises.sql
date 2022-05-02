USE codeup_test_db;

SELECT name AS 'ALL albums'
FROM albums;


SELECT name AS 'ALL albums'
FROM albums
WHERE release_date < 1980;


SELECT name AS 'ALL albums by Michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';
