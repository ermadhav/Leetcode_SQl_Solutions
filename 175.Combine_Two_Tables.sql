-- Get first name, last name, city, and state  
-- Show NULL if no address is found  

SELECT 
    p.firstName,  -- Person's first name  
    p.lastName,   -- Person's last name  
    a.city,       -- City from Address table  
    a.state       -- State from Address table  
FROM Person p  
LEFT JOIN Address a ON p.personId = a.personId;  -- Keep all persons, even without an address  
