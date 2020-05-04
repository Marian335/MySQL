CREATE DATABASE IF NOT EXISTS shop;

USE shop;



CREATE TABLE IF NOT EXISTS category

(

    id     INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,

    `name` VARCHAR(40) NOT NULL UNIQUE

);



CREATE TABLE IF NOT EXISTS country

(

    id     INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,

    `name` VARCHAR(40) NOT NULL UNIQUE

);



CREATE TABLE IF NOT EXISTS firm

(

    id         INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,

    `name`     VARCHAR(45) NOT NULL UNIQUE,

    country_id INT         NOT NULL,

    FOREIGN KEY (country_id) REFERENCES country (id)

);



CREATE TABLE IF NOT EXISTS shop

(

    id      INT          NOT NULL PRIMARY KEY AUTO_INCREMENT,

    `name`  VARCHAR(40)  NOT NULL,

    address VARCHAR(50),

    email   VARCHAR(50),

    site    VARCHAR(100) NOT NULL

);



CREATE TABLE IF NOT EXISTS product

(

    id            INT           NOT NULL PRIMARY KEY AUTO_INCREMENT,

    category_id   INT           NOT NULL,

    firm_id       INT           NOT NULL,

    model         VARCHAR(45)   NOT NULL,

    price         DECIMAL(7, 2) NOT NULL,

    specification TEXT,

    FOREIGN KEY (category_id) REFERENCES category (id),

    FOREIGN KEY (firm_id) REFERENCES firm (id)

);



CREATE TABLE IF NOT EXISTS product_shop

(

    product_id INT NOT NULL,

    shop_id    INT NOT NULL,

    FOREIGN KEY (product_id) REFERENCES product (id),

    FOREIGN KEY (shop_id) REFERENCES shop (id)

);



CREATE TABLE IF NOT EXISTS customer

(

    id           INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,

    first_name   VARCHAR(45) NOT NULL,

    last_name    VARCHAR(45) NOT NULL,

    age          INT         NOT NULL,

    phone_number CHAR(10)    NOT NULL UNIQUE

);



CREATE TABLE IF NOT EXISTS courier

(

    id         INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,

    first_name VARCHAR(45) NOT NULL,

    last_name  VARCHAR(45) NOT NULL,

    age        INT         NOT null

);



CREATE TABLE IF NOT EXISTS delivery

(

    id            INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,

    delivery_time VARCHAR(45) NOT NULL,

    courier_id    INT         NOT NULL,

    FOREIGN KEY (courier_id) REFERENCES courier (id)

);



CREATE TABLE IF NOT EXISTS `order`

(

    id              INT     NOT NULL PRIMARY KEY AUTO_INCREMENT,

    `date`          DATE    NOT NULL,

    `time`          TIME    NOT NULL,

    product_id      INT     NOT NULL,

    product_qty     INT     NOT NULL,

    order_agreement BOOLEAN NOT NULL,

    customer_id     INT     NOT NULL,

    delivery_id     INT,

    FOREIGN KEY (product_id) REFERENCES product (id),

    FOREIGN KEY (customer_id) REFERENCES customer (id),

    FOREIGN KEY (delivery_id) REFERENCES delivery (id)

);



INSERT INTO category(`name`)

VALUES ('laptop'),

       ('keyboard'),

       ('phone'),

       ('tv'),

       ('camera'),

       ('refrigerator'),

       ('microwave');



INSERT INTO courier(first_name, last_name, age)

VALUES ('Roy', 'Firkins', 23),

       ('Walter', 'Goodale', 38),

       ('Marc', 'Vanover', 20),

       ('Edwin', 'Tolbert', 31);



INSERT INTO customer(first_name, last_name, age, phone_number)

VALUES ('Mary', 'Collins', 49, '0861881971'),

       ('Marvin', 'Higgins', 65, '0866124054'),

       ('Sherri', 'King', 36, '0860088283'),

       ('Olga', 'Raphael', 38, '0865054378'),

       ('Sharon', 'Bixby', 71, '0864586903'),

       ('Edward', 'Wagnon', 27, '0865606425'),

       ('Jose', 'Bennett', 54, '0863700694');



INSERT INTO country(`name`)

VALUES ('USA'),

       ('Japan'),

       ('Germany'),

       ('Korea');



INSERT INTO firm(`name`, country_id)

VALUES ('Dell', 1),

       ('HyperX', 1),

       ('Bosch', 3),

       ('LG', 4),

       ('Apple', 1),

       ('Sony', 2),

       ('Samsung', 4),

       ('HP', 1);



INSERT INTO shop(`name`, address, email, site)

VALUES ('Best Buy', NULL, NULL, 'www.bestbuy.com'),

       ('HZ Computer', '135c Division St', NULL, 'hzcomputer.business.site'),

       ('Computer Workbench Inc', '163 Varick St # 6A', 'mikew@computerworkbench.net', 'computerworkbench.net'),

       ('P.C. Richard & Son', NULL, NULL, 'pcrichard.com');



INSERT INTO product(category_id, firm_id, model, price)

VALUES (2, 1, 'KB-216', 12.5),

       (6, 3, 'KGN39VI306', 562.9),

       (6, 3, 'KGN36XI35', 488.08),

       (3, 5, 'iPhone 7', 256.25),

       (4, 4, '43UM7600PLB', 584.28),

       (1, 8, 'Pavilion Gaming 15', 676.92),

       (3, 6, 'Xperia 10', 178.11),

       (5, 6, 'Alpha A6100', 712.55),

       (1, 1, 'Inspirion 3582', 256.49),

       (2, 2, 'Alloy Origins', 117.54),

       (3, 7, 'Galaxy M31', 260.05),

       (6, 4, 'GA-B509SLKM', 623.47),

       (7, 7, 'ME81MRTS', 92.6),

       (1, 5, 'A1366 MacBook Air', 890.69),

       (3, 5, 'iPhone XS', 694.73);



INSERT INTO product_shop

VALUES (1, 3),

       (1, 2),

       (1, 1),

       (2, 4),

       (3, 4),

       (4, 1),

       (4, 3),

       (5, 2),

       (6, 3),

       (7, 1),

       (7, 2),

       (8, 3),

       (9, 2),

       (9, 3),

       (9, 1),

       (10, 1),

       (11, 3),

       (12, 4),

       (13, 4),

       (14, 1),

       (14, 3),

       (15, 2);



INSERT INTO delivery(delivery_time, courier_id)

VALUES ('00 days 08 hours 34 minutes', 3),

       ('02 days 03 hours 00 minutes', 1),

       ('00 days 04 hours 12 misutes', 4),

       ('00 days 23 hours 03 minutes', 2);



INSERT INTO `order`(`date`, `time`, product_id, product_qty, order_agreement, customer_id, delivery_id)

VALUES ('2020-03-15', '06:36:41', 1, 1, TRUE, 1, NULL),

       ('2020-03-23', '14:31:33', 3, 1, TRUE, 5, NULL),

       ('2020-03-12', '17:38:13', 8, 1, TRUE, 4, 1),

       ('2020-03-20', '07:19:44', 12, 1, FALSE, 1, 2),

       ('2020-03-02', '19:43:51', 4, 4, TRUE, 7, NULL),

       ('2020-03-30', '19:58:40', 5, 1, FALSE, 2, 3),

       ('2020-03-27', '13:45:08', 9, 2, TRUE, 6, NULL),

       ('2020-03-19', '07:35:24', 3, 3, TRUE, 5, NULL),

       ('2020-03-30', '17:30:19', 8, 2, FALSE, 3, 4);



SELECT o.id,

       `date`,

       `time`,

       f.name        frim,

       p.model,

       p.price,

       cat.name      category,

       product_qty,

       c.first_name  customer_f_name,

       c.last_name   customer_l_name,

       c.phone_number,

       d.delivery_time,

       co.first_name courier_f_name,

       co.last_name  courier_l_name

FROM `order` o

         LEFT JOIN product p

                   ON p.id = o.product_id

         JOIN category cat

              ON cat.id = p.category_id

         JOIN firm f

              ON f.id = p.firm_id

         JOIN customer c

              ON c.id = o.customer_id

         LEFT JOIN delivery d

                   ON d.id = o.delivery_id

         LEFT JOIN courier co

                   ON d.courier_id = co.id

WHERE order_agreement = TRUE

ORDER BY o.id;