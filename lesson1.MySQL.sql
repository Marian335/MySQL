CREATE DATABASE IF NOT EXISTS `Library`;

USE `Library`;



CREATE TABLE IF NOT EXISTS `Book`

(

    book_name           VARCHAR(120)                       NOT NULL,

    description         VARCHAR(1000) DEFAULT 'Without description',

    date_of_publication DATE          DEFAULT '2018-01-01' NOT NULL,

    author              VARCHAR(60)                        NOT NULL,

    kategory            VARCHAR(30)                        NOT NULL

);



INSERT INTO `Book`(book_name, date_of_publication, author, kategory)

VALUES ('Book1', '2014-12-21', 'Author1', 'Fantazy'),

       ('Book2', '2010-11-10', 'Author2', 'Roman'),

       ('Book3', '2009-03-07', 'Author3', 'Horror'),

       ('Book4', '2018-08-24', 'Author1', 'Detective'),

       ('Book5', '2020-01-11', 'Author4', 'Fantazy');



INSERT INTO `Book`(book_name, author, kategory)

VALUES ('Book6', 'Author5', 'Mystery'),

       ('Book7', 'Author6', 'Romance'),

       ('Book8', 'Author3', 'Triller'),

       ('Book9', 'Author8', 'Horror'),

       ('Book10', 'Author9', 'Fantazy');



SELECT *

FROM `Book`;