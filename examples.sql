USE codeup_test_db;

INSERT INTO users(username, email, first_name, last_name, middle_name)
VALUES ('UzielC', 'uziel@email', 'uziel', 'carranza', NULL),
       ('text', 'test@test', 'test', 'testing', NULL);


INSERT INTO users(username, email, first_name, last_name, middle_name)
VALUES ('UzielC', 'uziel@email', 'uziel', 'carranza', NULL),
       ('text', 'test@test', 'test', 'testing', NULL);

SELECT id,username, email
FROM users;

SELECT *
FROM users
WHERE last_name = 'Carranza';


SELECT *
FROM users
WHERE last_name LIKE 't%';


UPDATE users
SET middle_name = 'U'
WHERE first_name = 'uziel';


SELECT *
FROM users
WHERE first_name LIKE 'u%';