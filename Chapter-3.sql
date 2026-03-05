-- FIRST SELECT
SELECT * FROM dim_customer;

-- LIMIT 
SELECT 
	customer_id,
	email 
FROM 
	dim_customer
LIMIT 15; -- Will limit the number of the row    

-- WHERE [CONDITION]
-- 1
SELECT 
	* 
FROM 
	dim_customer 
WHERE 
	gender = 'F';

-- 2 (AND/OR)    
SELECT 
	* 
FROM 
	dim_customer 
WHERE 
	(gender = 'F') AND ((country = 'France') OR (join_date > '2022-01-01'));
    
-- LIKE
-- 1)
SELECT 
	* 
FROM 
	dim_customer
WHERE 
	first_name LIKE 'T%'; -- it will give all the name starting with t %  -> will be considered all the letter after that _ will considered as the postition after the perticular letter
-- 2)
SELECT 
	* 
FROM 
	dim_customer
WHERE 
	first_name LIKE 'T%y'; -- first letter with t and last with y

-- 3)
SELECT 
	* 
FROM 
	dim_customer
WHERE 
	first_name LIKE 'T__f%y'; -- it will give all the name starting with t after that 3rd is f and then end is y and ending with y

-- SORTING
SELECT 
	* 
FROM 
	dim_product
ORDER BY 
	unit_price DESC; -- The default behaivour is ascending order 
    
-- ALIAS
SELECT 
	product_key,
    product_id,
    product_name AS 'product name', -- It will not change the name in the db but while showing the table in the ui the name seems to be altered
    category
FROM 
	dim_product;
    
-- GROUPING
-- 1
SELECT 
	category,
    avg(unit_price) AS avg_price,
    sum(unit_price) AS total_price
FROM 
	dim_product
GROUP BY 
	category;
    
-- 2
SELECT 
	category,
    avg(unit_price) AS avg_price,
    sum(unit_price) AS total_price
FROM 
	dim_product
GROUP BY 
	category
HAVING
	avg_price > 500;