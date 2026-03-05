-- Create database
CREATE DATABASE sales;

-- Create tables
USE sales;
CREATE TABLE stores
(
	store_id INT ,
    store_name VARCHAR(200)
);

-- Inserting the data in the table
INSERT INTO stores
VALUES 
(1,"stores_xyz"),
(2,"stores_abc");
 
 -- Inserting in slected column
 INSERT INTO stores(store_id)
VALUES 
(5);

-- create the table
CREATE TABLE stores_new
(
	store_id INT UNIQUE,
    store_name VARCHAR(200) NOT NULL
);

-- Insert Some Data
INSERT INTO stores_new
VALUES
(1,"store_xyz");

-- Deleting whole table
DROP TABLE stores_new;
-- Deleting the data of the table 
TRUNCATE TABLE stores;

-- Alter command 
ALTER TABLE stores_new
ADD COLUMN store_city varchar(200);

ALTER TABLE stores_new
RENAME COLUMN store_city to store_location; 
