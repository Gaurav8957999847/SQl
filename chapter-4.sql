-- JOINS

CREATE TABLE orders
(
	o_id INT,
    cust_id INT,
    price INT
);

INSERT INTO orders
VALUES 
(1,101,1000),
(2,201,1100),
(3,501,1200);

CREATE TABLE customers
(
	id INT,
    name VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO customers
VALUES 
(101,'love','aa'),
(201,'ansh','bb'),
(301,'lamba','cc');

-- INNER JOIN
SELECT 
	*
FROM 
	orders o -- this is the alias for order
INNER JOIN 
	customers c 
    ON 
		o.cust_id = c.id;

-- LEFT JOIN
SELECT 
	*
FROM  -- whatever we write after the from is the left table and other is the right table
	orders o 
LEFT JOIN 
	customers c 
    ON 
		o.cust_id = c.id;

-- RIGHT JOIN
SELECT 
	*
FROM 
	orders o 
RIGHT JOIN 
	customers c 
    ON 
		o.cust_id = c.id;
        
-- FULL JOIN (Not Supported)
SELECT 
	*
FROM 
	orders o 
FULL JOIN -- default is the inner join and mysql does not support full join to solve this issue we use the unions
	customers c 
    ON 
		o.cust_id = c.id;
        
        
-- UNIONS
SELECT 
	*
FROM 
	orders o 
LEFT JOIN 
	customers c 
    ON 
		o.cust_id = c.id

UNION

SELECT 
	*
FROM 
	orders o 
RIGHT JOIN 
	customers c 
    ON 
		o.cust_id = c.id;
        
        
        
        
        