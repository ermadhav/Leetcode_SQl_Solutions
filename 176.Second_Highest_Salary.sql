SELECT 
    (SELECT DISTINCT salary  -- Select distinct salary values to remove duplicates
     FROM Employee 
     ORDER BY salary DESC  -- Sort salaries in descending order (highest to lowest)
     LIMIT 1 OFFSET 1) AS SecondHighestSalary;  -- Skip the highest salary (OFFSET 1) and fetch the second highest (LIMIT 1)
