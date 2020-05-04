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



INSERT INTO book_category(`name`)

VALUES ('classic'),

       ('horror'),

       ('novel'),

       ('science'),

       ('fantastic');



INSERT INTO book(`name`, price, isbn, book_category_id)

VALUES ('Emma', 139.7, '978-5-0397-92', 1),

       ('Pine', 279.7, '978-6-5048-79', 2),

       ('If It Bleeds', 447.9, '978-9-4008-72', 2),

       ('Humble Pi', 223.7, '978-7-1754-84', 4),

       ('Locke & Key Vol. 1', 447.7, '978-4-6103-33', 3),

       ('Black Beauty', 363.7, '978-4-1980-38', 1),

       ('The Planets', 212.8, '978-5-4896-19', 4),

       ('The Quantum Universe', 450, '978-2-7155-87', 4),

       ('Elevation', 167.7, '978-2-0127-54', 2),

       ('Locke & Key Vol. 3', 374.87, '978-2-4669-10', 3),

       ('The Institute', 559.3, '978-3-2577-01', 5),

       ('A Brief History Of Time', 450, '978-2-6867-69', 4),

       ('Stories of the Sea', 363.7, '978-0-8448-94', 1),

       ('The Rats', 251.2, '978-5-8105-33', 2),

       ('The Grand Design', 421.3, '978-2-6942-30', 4);



INSERT INTO author(first_name, last_name, date_of_birthday)

VALUES ('Jane', 'Austen', '1974-02-18'),

       ('Anna', 'Sewell', '1998-10-24'),

       ('Angela', 'Carter', '1987-01-01'),

       ('Francine', 'Toon', '1973-05-22'),

       ('Stephen', 'King', '1965-01-22'),

       ('James', 'Herbert', '1982-05-24'),

       ('Matt', 'Parker', '1977-11-20'),

       ('Stephen', 'Hawking', '1988-04-26'),

       ('Brian', 'Cox', '1976-05-24'),

       ('Joe', 'Hill', '1953-06-02'),

       ('Jeff', 'Forshaw', '1966-11-23');



INSERT INTO book_author

VALUES (1, 1),

       (2, 4),

       (3, 5),

       (4, 7),

       (5, 10),

       (5, 5),

       (6, 2),

       (7, 9),

       (8, 9),

       (8, 11),

       (9, 5),

       (10, 5),

       (10, 10),

       (11, 5),

       (12, 8),

       (13, 1),

       (13, 11),

       (13, 3),

       (14, 6),

       (15, 8);



SELECT book.id, book.`name`, price, bc.`name` category, a.first_name author_f_name, a.last_name author_l_name

from book

         LEFT JOIN book_category bc

                   ON bc.id = book.book_category_id

         JOIN book_author ba

              ON ba.book_id = book.id

         JOIN author a

              ON ba.author_id = a.id

ORDER BY book.id;



SELECT a.first_name author_f_name, a.last_name author_l_name, b.name book, bc.name category

from author a

         LEFT JOIN book_author ba

                   ON ba.author_id = a.id

         JOIN book b

              ON b.id = ba.book_id

         JOIN book_category bc

              ON b.book_category_id = bc.id

WHERE a.first_name = 'Stephen'

  AND a.last_name = 'Hawking';



SELECT b.name book, a.first_name author_f_name, a.last_name author_l_name, bc.name category

from author a

         LEFT JOIN book_author ba

                   ON ba.author_id = a.id

         JOIN book b

              ON b.id = ba.book_id

         JOIN book_category bc

              ON b.book_category_id = bc.id

WHERE b.name LIKE 'Locke%';