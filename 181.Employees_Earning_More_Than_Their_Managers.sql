SELECT e1.name AS Employee  -- Select employee name
FROM Employee e1
JOIN Employee e2 ON e1.managerId = e2.id  -- Join employee table with itself to get manager details
WHERE e1.salary > e2.salary;  -- Filter employees earning more than their manager