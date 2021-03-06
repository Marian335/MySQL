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

    author_prizes       VARCHAR(120)

);



INSERT INTO book (book_name, date_of_publication, category, isbn, sheets_qty,

                  author_first_name, author_last_name, author_email, author_age, author_birthday)

VALUES ('Jacob\'s Room', '2015-09-23', 'novel', '0-3457-8753-6', 624, 'Virginia', 'Woolf',

        'virginja1@gmail.com', 32, '1988-07-05'),

       ('The Bridge on the Drina', '2014-05-15', 'legend', '0-2721-1401-4', 235, 'Ivo', 'Andrik',

        'andric@mail.ru', 24, '1996-03-30'),

       ('Quincas Borba', '2017-05-06', 'satire', '0-9439-3973-9', 98, 'Machado', 'Assis',

        'machadoa@gmail.com', 29, '1991-05-22'),

       ('The Collector', '2014-03-31', 'thriller', '0-6601-4942-7', 532, 'John', 'Fowles',

        'johnn@gmail.com', 54, '1966-02-22'),

       ('Disappearance', '2010-05-15', 'comedy', '0-3663-8509-7', 216, 'David', 'Dabydeen',

        'david@gmail.com', 28, '1992-07-01'),

       ('Origin', '2018-12-25', 'horror', '0-2446-5933-8', 318, 'Dan', 'Brown',

        'danbrown@ukr.net', 45, '2011-11-01'),

       ('Option B', '2016-04-11', 'novel', '0-1322-2587-5', 624, 'Sheryl', 'Sandberg',

        'virginja1@gmail.com', 32, '1975-02-18'),

       ('Romance of the Three Kingdoms', '2011-11-04', 'romance', '0-5873-9877-9', 396, 'Luo', 'Guanzhong',

        'luidgi@gmail.com', 29, '1991-08-30'),

       ('The Good Soldier', '2017-01-14', 'novel', '0-1648-6219-6', 414, 'Jaroslav', 'Hazek',

        'hazek102@yahoo.com', 33, '1987-01-19'),

       ('Leviathan', '2013-06-21', 'historical poem', '0-8348-2437-X', 824, 'Scott', 'Westerfeld',

        'scottw@gmail.com', 46, '1987-07-16'),

       ('Adam Bede', '2014-08-22', 'detective', '0-5145-8833-0', 412, 'George', 'Eliot',

        'eliotg44@gmail.com', 22, '1998-05-17'),

       ('Rob Roy', '2017-07-15', 'comedy', '0-3475-8503-5', 128, 'Walter', 'Scott',

        'scottwalter@gmail.com', 55, '1965-02-16'),

       ('The Jungle', '2017-08-13', 'fantasy', '0-2537-9636-9', 297, 'Upton', 'Sinclair',

        'sinclair@bk.ru', 34, '1986-08-01'),

       ('The Ice Palace', '2018-01-27', 'fantastic', '0-2454-3567-0', 331, 'Tarjei', 'Vesaas',

        'tarjei@gmail.com', 32, '1988-12-12'),

       ('Siddhartha', '2016-12-09', 'horror', '0-2279-8657-1', 165, 'Hermann', 'Hesse',

        'hesse04@ukr.net', 46, '2010-09-06'),

       ('London Fields', '2017-05-26', 'novel', '0-6946-5604-6', 624, 'Martin', 'Amis',

        'virginja1@gmail.com', 32, '1974-05-10'),

       ('Humboldt\'s Gift', '2018-10-11', 'novel', '0-4058-4483-2', 98, 'Saul', 'Bellow',

        'bellowsaul@gmail.com', 25, '1995-02-21'),

       ('The Heat of the Day', '2013-04-01', 'satire', '0-8258-6294-9', 112, 'Elizabeth', 'Bowen',

        'elizabeth@gmail.com', 23, '1997-01-28'),

       ('Phineas Finn', '2017-01-14', 'detective', '0-1717-1657-4', 229, 'Anthony', 'Trollope',

        'antonyt@mail.ru', 38, '1982-08-09'),

       ('1984', '2011-01-17', 'historical novel', '0-1652-7825-0', 673, 'George', 'Orwell',

        'orvell@gmail.com', 53, '1967-10-09'),

       ('A Day in Spring', '2010-07-18', 'romance', '0-4760-2821-3', 214, 'Ciril', 'Kosmach',

        'kosmach@mail.ru', 42, '2015-04-06'),

       ('Waverley', '2019-02-26', 'novel', '0-5310-2771-6', 452, 'Walter', 'Scott',

        'scottwalter@gmail.com', 55, '1965-12-15'),

       ('Neuromancer', '2014-02-19', 'fantasy', '0-7341-5407-0', 215, 'William', 'Gibson',

        'gibsonwiliam@gmail.com', 38, '1982-07-08'),

       ('Oroonoko', '2014-09-21', 'thriller', '0-7422-0638-6', 314, 'Aphra', 'Behn',

        'aphraben@gmail.com', 41, '1979-03-14');



SELECT *

FROM book;

SELECT *

FROM book

WHERE id = 5

   OR id = 10

   OR id = 13;

SELECT *

FROM book

WHERE sheets_qty > 150;

SELECT *

FROM book

WHERE author_age > 30;

#SELECT * FROM book WHERE author_prizes = NULL; #all author haven't prizes

SELECT *

FROM book

WHERE author_email = 'scottwalter@gmail.com';

SELECT *

FROM book

WHERE isbn = '0-1717-1657-4';

SELECT *

FROM book

WHERE category = 'novel';

SELECT *

FROM book

WHERE sheets_qty > 200

  AND author_age > 25;

SELECT *

FROM book

WHERE category = 'comedy'

   OR category = 'romance';

SELECT *

FROM book

ORDER BY book_name;

SELECT *

FROM book

ORDER BY author_email;

SELECT *

FROM book

ORDER BY sheets_qty DESC;

SELECT DISTINCT category

FROM book;

SELECT DISTINCT author_first_name

FROM book;

#SELECT * FROM book WHERE date_of_publication > '2000-01-01'; #all books

SELECT *

FROM book

WHERE date_of_publication < '2010-01-01';