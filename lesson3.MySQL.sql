CREATE DATABASE IF NOT EXISTS library;

USE library;



CREATE TABLE IF NOT EXISTS book

(

    id                  INT PRIMARY KEY AUTO_INCREMENT NOT NULL,

    book_name           VARCHAR(120)                   NOT NULL,

    description         TEXT,

    date_of_publication DATE DEFAULT '2018-01-01'      NOT NULL, #2020-01-01

    category            VARCHAR(30)                    NOT NULL,

    isbn                VARCHAR(20) UNIQUE,

    sheets_qty          INT                            NOT NULL,

    author_first_name   VARCHAR(45)                    NOT NULL,

    author_last_name    VARCHAR(45)                    NOT NULL,

    author_email        VARCHAR(50)                    NOT NULL,

    author_age          INT                            NOT NULL,

    author_birthday     DATE                           NOT NULL,

    author_prizes       VARCHAR(120),

    price               DECIMAL(6, 2)                  NOT NULL

);



INSERT INTO book (book_name, date_of_publication, category, isbn, sheets_qty,

                  author_first_name, author_last_name, author_email, author_age, author_birthday, price)

VALUES ('Jacob\'s Room', '2015-09-23', 'novel', '0-3457-8753-6', 624, 'Virginia', 'Woolf',

        'virginja1@gmail.com', 32, '1988-07-05', 265.34),

       ('The Bridge on the Drina', '2014-05-15', 'legend', '0-2921-1401-4', 235, 'Ivo', 'Andrik',

        'andric@mail.ru', 24, '1996-03-30', 404.3),

       ('Quincas Borba', '2017-05-06', 'satire', '0-9439-3973-9', 98, 'Machado', 'Assis',

        'machadoa@gmail.com', 29, '1991-05-22', 668.69),

       ('The Collector', '2014-03-31', 'thriller', '0-6601-4942-7', 532, 'John', 'Fowles',

        'johnn@gmail.com', 54, '1966-02-22', 231.32),

       ('Disappearance', '2010-05-15', 'comedy', '0-3663-8509-7', 216, 'David', 'Dabydeen',

        'david@gmail.com', 28, '1992-07-01', 774.1),

       ('Origin', '2018-12-25', 'horror', '0-2446-5933-8', 318, 'Dan', 'Brown',

        'danbrown@ukr.net', 45, '2011-11-01', 330.57),

       ('Option B', '2016-04-11', 'novel', '0-1322-2587-5', 624, 'Sheryl', 'Sandberg',

        'virginja1@gmail.com', 32, '1975-02-18', 932.59),

       ('Romance of the Three Kingdoms', '2011-11-04', 'romance', '0-5873-9877-9', 396, 'Luo', 'Guanzhong',

        'luidgi@gmail.com', 29, '1991-08-30', 388.38),

       ('The Good Soldier', '2017-01-14', 'novel', '0-1648-6219-6', 414, 'Jaroslav', 'Hazek',

        'hazek102@yahoo.com', 33, '1987-01-19', 387.04),

       ('Leviathan', '2013-06-21', 'historical poem', '0-8348-2437-X', 824, 'Scott', 'Westerfeld',

        'scottw@gmail.com', 46, '1987-07-16', 909.42),

       ('Adam Bede', '2014-08-22', 'detective', '0-5145-8833-0', 412, 'George', 'Eliot',

        'eliotg44@gmail.com', 22, '1998-05-17', 330.54),

       ('Rob Roy', '2017-07-15', 'comedy', '0-3475-8503-5', 128, 'Walter', 'Scott',

        'scottwalter@gmail.com', 55, '1965-02-16', 384.59),

       ('The Jungle', '2017-08-13', 'fantasy', '0-2537-9636-9', 297, 'Upton', 'Sinclair',

        'sinclair@bk.ru', 34, '1986-08-01', 148.32),

       ('The Ice Palace', '2018-01-27', 'fantastic', '0-2454-3567-0', 331, 'Tarjei', 'Vesaas',

        'tarjei@gmail.com', 32, '1988-12-12', 745.73),

       ('Siddhartha', '2016-12-09', 'horror', '0-2279-8657-1', 165, 'Hermann', 'Hesse',

        'hesse04@ukr.net', 46, '2010-09-06', 949.79),

       ('London Fields', '2017-05-26', 'novel', '0-6946-5604-6', 624, 'Martin', 'Amis',

        'virginja1@gmail.com', 32, '1974-05-10', 898.23),

       ('Humboldt\'s Gift', '2018-10-11', 'novel', '0-4058-4483-2', 98, 'Saul', 'Bellow',

        'bellowsaul@gmail.com', 25, '1995-02-21', 797.52),

       ('The Heat of the Day', '2013-04-01', 'satire', '0-8258-6294-9', 112, 'Elizabeth', 'Bowen',

        'elizabeth@gmail.com', 23, '1997-01-28', 703.1),

       ('Phineas Finn', '2017-01-14', 'detective', '0-1717-1657-4', 229, 'Anthony', 'Trollope',

        'antonyt@mail.ru', 38, '1982-08-09', 173.3),

       ('1984', '2011-01-17', 'historical novel', '0-1652-7825-0', 673, 'George', 'Orwell',

        'orvell@gmail.com', 53, '1967-10-09', 328.23),

       ('A Day in Spring', '2010-07-18', 'romance', '0-4760-2821-3', 214, 'Ciril', 'Kosmach',

        'kosmach@mail.ru', 42, '2015-04-06', 93.19),

       ('Waverley', '2019-02-26', 'novel', '0-5310-2771-6', 452, 'Walter', 'Scott',

        'scottwalter@gmail.com', 55, '1965-12-15', 145.73),

       ('Neuromancer', '2014-02-19', 'fantasy', '0-7341-5407-0', 215, 'William', 'Gibson',

        'gibsonwiliam@gmail.com', 38, '1982-07-08', 600.72),

       ('Oroonoko', '2014-09-21', 'thriller', '0-7422-0638-6', 314, 'Aphra', 'Behn',

        'aphraben@gmail.com', 41, '1979-03-14', 99.13);



SELECT *

FROM book;

UPDATE book

SET author_last_name = 'Scot'

WHERE id IN (12, 22);

SELECT COUNT(*)

FROM book

WHERE author_prizes IS NOT NULL;

SELECT *

FROM book

WHERE sheets_qty = (SELECT MIN(sheets_qty) FROM book);

SELECT MAX(sheets_qty)

FROM book;

SELECT AVG(price)

FROM book;

SELECT COUNT(*)

FROM book

WHERE category = 'novel';

SELECT MIN(price)

FROM book;

SELECT *

FROM book

WHERE price = (SELECT MIN(price) FROM book);

SELECT book_name, ROUND(price, 4)

FROM book

ORDER BY book_name;

SELECT *

FROM book

ORDER BY date_of_publication

LIMIT 5, 5;

SELECT *

FROM book

ORDER BY date_of_publication

LIMIT 10, 6;

SELECT *

FROM book

WHERE book_name LIKE '%oo%';

SELECT *

FROM book

WHERE id LIKE '_2';

SELECT *

FROM book

WHERE author_email LIKE '%mail.ru'

ORDER BY book_name;

SELECT *

FROM book

WHERE price BETWEEN 50 AND 120;

SELECT *

FROM book

WHERE price NOT BETWEEN 200 AND 600

ORDER BY price;

DELETE

FROM book

WHERE id = 5;

DELETE

FROM book

WHERE book_name = 'Oroonoko';

SET SQL_SAFE_UPDATES = 0;

DELETE

FROM book

WHERE isbn LIKE '%6';

SET SQL_SAFE_UPDATES = 1;