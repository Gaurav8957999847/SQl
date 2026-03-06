-- CTEs [Common Table Expressions] this is the alternative to the subqueries specific version of the subqueries

WITH cte_table AS -- so the below will create the temporary table named this 
(
SELECT 
	* 
FROM 
	dim_product
WHERE 
	unit_price > (SELECT AVG(unit_price) FROM dim_product)
), -- inheriting to the other table cte_table_2
cte_table_2 AS
(
SELECT * FROM cte_table
WHERE 
	product_name IN ('Figure Method','Huge Change', 'Film Finally') 
)
SELECT * FROM cte_table_2
WHERE product_name IN ('Figure Method','Huge Change');


    
    
    