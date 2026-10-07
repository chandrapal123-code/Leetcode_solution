SELECT 
    D.name AS Department,
    E.name AS Employee,
    E.salary
FROM Employee E
JOIN Department D
    ON E.departmentid = D.id
WHERE E.salary = (
    SELECT MAX(E2.salary)
    FROM Employee E2
    WHERE E2.departmentId = E.departmentId
);

