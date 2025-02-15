SELECT email  -- Select duplicate emails  
FROM Person  
GROUP BY email  -- Group by email  
HAVING COUNT(email) > 1;  -- Keep only emails appearing more than once  
