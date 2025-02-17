CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
DETERMINISTIC
BEGIN
  -- Return the Nth highest distinct salary
  RETURN (
    SELECT salary FROM (
      -- Assign a ranking to each distinct salary using DENSE_RANK()
      SELECT DISTINCT salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS ranking
      FROM Employee
    ) AS RankedSalaries
    -- Filter only the salary where rank = N
    WHERE ranking = N
  );
END;
