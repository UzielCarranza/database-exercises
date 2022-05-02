USE codeup_test_db;


# DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums
(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    artist VARCHAR(255) not null,
    name VARCHAR(255) not null,
    release_date INT UNSIGNED CHECK ( release_date between 1400 and 3000),
    sales FLOAT UNSIGNED,
    genre VARCHAR(255) not null
);

USE codeup_test_db;
DESCRIBE codeup_test_db.albums;
SHOW CREATE TABLE codeup_test_db.albums;