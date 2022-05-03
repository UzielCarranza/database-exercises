USE join_test_db;
INSERT INTO users (name, email, role_id)
VALUES ('test', 'test@example.com', 2),
       ('test2', 'test2@example.com', 2),
       ('test3', 'test3@example.com', 2),
       ('test4', 'test4@example.com', null);


SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;


SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;


SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;