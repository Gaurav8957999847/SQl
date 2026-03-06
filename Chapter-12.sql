-- VIEWS storing a query and then runnig that only multiple times to avoid bulking of the code and there is no data that is stored  
CREATE VIEW dedup_view AS
SELECT 
	subquery.*
FROM 
(
SELECT 
	*,
    ROW_NUMBER() OVER (PARTITION BY id ORDER BY id) AS dedup
FROM 
	customers
) subquery
WHERE 
	dedup = 1;

-- Reusing the query that is stored in the views 
SELECT * FROM dedup_view;
    
    
    
    
    
    
    
    
    
    
    