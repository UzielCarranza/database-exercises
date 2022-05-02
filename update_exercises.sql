USE codeup_test_db;

SELECT name AS 'ALL albums'
FROM albums;


SELECT name AS 'ALL albums'
FROM albums
WHERE release_date < 1980;


SELECT name AS 'ALL albums by Michael Jackson'
FROM albums
WHERE artist = 'Michael Jackson';



UPDATE albums
SET sales = sales * 10;


SELECT sales AS 'All albums changed * 10'
FROM albums
WHERE artist = 'Adele';



UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;


SELECT release_date AS 'Release date change to 1980'
FROM albums
WHERE release_date = 1800;


