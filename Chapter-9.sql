-- SUBQUERIES
-- 1)
SELECT 
	* 
FROM 
	dim_product
WHERE 
	unit_price > (SELECT AVG(unit_price) FROM dim_product); -- SELECT AVG(unit_price) FROM dim_product this will give the value instead of the hard coded value we will make this as written in the variable form
    
-- 2)
SELECT 
	* 
FROM 
(
	SELECT 
	* 
FROM 
	dim_product
WHERE 
	unit_price > (SELECT AVG(unit_price) FROM dim_product)
) AS subquery_table
WHERE 
	product_name = 'Figure Method'

