
-- leaving a comment, will not be run as a command

-- DDL commands (Data Definition Language)
-- Used to build and modify our DB


-- CREATE

CREATE DATABASE ecom;

USE ecom; -- Telling my interpreter which database to use for this script file

CREATE TABLE customer (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(75) NOT NULL,
email VARCHAR(150) NULL
);

-- DROP TABLE customer;

CREATE TABLE orders (
id INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE NOT NULL,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customer(id)
);

-- ALTER 

ALTER TABLE customer ADD (phone VARCHAR(16), address VARCHAR(150)); -- adding phone and address to customer table


ALTER TABLE customer ADD phone VARCHAR(16); -- no wrapping parenthesis need for adding a single colum


ALTER TABLE customer
ADD address VARCHAR(150);

-- DROPPING a column

ALTER TABLE customer
DROP COLUMN phone;

-- DROPPING a table

DROP TABLE customer;










