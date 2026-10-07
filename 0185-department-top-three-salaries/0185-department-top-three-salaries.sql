# Write your MySQL query statement below
SELECT 
    D.name AS Department ,
    E.name AS  Employee ,
    E.Salary 
FROM Employee E
JOIN Department D
ON E.departmentId = D.id 
WHERE 3 > (
    SELECT COUNT(DISTINCT E2.Salary) 
    FROM Employee E2
    WHERE E2.departmentId = E.departmentId 
    AND E2.Salary > E.Salary
    );