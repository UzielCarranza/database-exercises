USE codeup_test_db;

SELECT name AS 'The name of all albums by Pink Floyd'
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released'
FROM albums
WHERE name LIKE 'Sgt%';