CREATE DATABASE library;

USE library;

CREATE TABLE authors(
id INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(100) NOT NULL
);

CREATE TABLE books(
id INT PRIMARY KEY AUTO_INCREMENT,
isbn VARCHAR(13),
title VARCHAR(100) NOT NULL,
author_id INT,
FOREIGN KEY (author_id) REFERENCES authors(id)
);

ALTER TABLE authors
ADD nationality VARCHAR(50);

ALTER TABLE books
MODIFY isbn VARCHAR(13) UNIQUE;

SHOW TABLES;
DESCRIBE authors;
DESCRIBE books;