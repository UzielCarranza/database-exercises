USE codeup_test_db;

SELECT name AS 'The name of all albums by Pink Floyd'
FROM albums
WHERE artist = 'Pink Floyd'
