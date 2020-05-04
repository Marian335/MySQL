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

    delivery        BOOLEAN NOT NULL,

    customer_id     INT     NOT NULL,

    delivery_id     INT,

    FOREIGN KEY (product_id) REFERENCES product (id),

    FOREIGN KEY (customer_id) REFERENCES customer (id),

    FOREIGN KEY (delivery_id) REFERENCES delivery (id)

);