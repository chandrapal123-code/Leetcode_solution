# Write your MySQL query statement below
SELECT 
   E1.name,
    B1.bonus 
FROM Employee E1
LEFT JOIN Bonus B1
ON E1.empId = B1.empId 
WHERE bonus < 1000 
OR bonus IS NULL