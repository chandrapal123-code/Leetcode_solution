# Write your MySQL query statement below
SELECT E.name AS Employee 
FROM Employee E
JOIN Employee E1
ON E.managerId = E1.id
AND E.salary > E1.salary  ;