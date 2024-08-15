

USE ecom;

SELECT * FROM customer;
SELECT * FROM orders;


-- DML (Data Manipulation Language)
-- Add, Modify, and Delete data within our database

-- INSERT INTO

INSERT INTO customer (customer_name, email, phone, address)
VALUES ('Travis', 'traviscpeck@codingtemple.com', '1111111111', '123 real street'); -- strings are required to be entered in with single quotes

-- ADD multiple values to a table at once

INSERT INTO customer (customer_name, email, phone, address)
VALUES ('Dylan Katina', 'dk@email.com', '2223334444', '123 cool st'),
('Darth Vader', 'dv@deathstar.com', '6666666666', 'death star 1'),
('Luke Skywalker', 'chosenone@email.com', '7778889999', 'tattooine');

-- Update Entities

UPDATE customer
SET customer_name = 'Anakin Skywalker', email = 'as@jedi.com'
WHERE id = 4;

-- Delete an entry

DELETE FROM customer
WHERE id = 4;

-- MySQL has safegaurd
-- SQL_SAFEUPDATES 1 and 0
-- 1 is the default, allows us to delete data based off of the 'id' or primary key identifier
-- 0 offers more freedom to delete based off of other attributes

SET SQL_SAFE_UPDATES = 0;

DELETE FROM customer
WHERE email = 'dv@deathstar.com';

SET SQL_SAFE_UPDATES = 1;



-- ADDING ADDITIONAL DATA FOR QUERYING

INSERT INTO customer (customer_name, email, phone)
VALUES ('Peter Cottontail', 'pc@email.com', '1234567891'),
('Jungle George', 'banana@email.com', '1234567892'),
('Billy Butcher', 'supesoup@email.com', '1234567893'),
('Obi-wan Kenoibi', 'ok@jedi.com', '1234567894'),
('Django Freeman', 'whereshildi@email.com', '1234567895'),
('John Dutton', 'ranch4life@email.com', '1234567896'),
('Jeff Probst', 'jp@survivor.com', '1234567897');


INSERT INTO orders (order_date, customer_id)
VALUES ('2023-01-18', 1),
('2023-02-24', 1),
('2023-02-28', 6),
('2023-03-04', 8),
('2023-03-12', 2),
('2023-04-16', 7),
('2023-05-19', 9),
('2023-06-02', 10),
('2023-12-23', 11),
('2024-01-18', 1);






