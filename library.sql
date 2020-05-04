CREATE DATABASE IF NOT EXISTS library;

USE library;



CREATE TABLE IF NOT EXISTS book_category

(

    id     INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,

    `name` VARCHAR(20) NOT NULL UNIQUE

);



CREATE TABLE IF NOT EXISTS book

(

    id               INT PRIMARY KEY AUTO_INCREMENT NOT NULL,

    `name`           VARCHAR(45)                    NOT NULL,

    description      TEXT,

    price            DECIMAL(6, 2)                  NOT NULL,

    isbn             CHAR(13)                       NOT NULL UNIQUE,

    book_category_id INT                            NOT NULL,

    FOREIGN KEY (book_category_id) REFERENCES book_category (id)

);



CREATE TABLE IF NOT EXISTS author

(

    id               INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,

    first_name       VARCHAR(20) NOT NULL,

    last_name        VARCHAR(30) NOT NULL,

    email            VARCHAR(50) UNIQUE,

    address          VARCHAR(50),

    date_of_birthday DATE        NOT NULL

);



CREATE TABLE book_author

(

    book_id   INT NOT NULL,

    author_id INT NOT NULL,

    FOREIGN KEY (book_id) REFERENCES book (id),

    FOREIGN KEY (author_id) REFERENCES author (id)

);