# Write your MySQL query statement below
SELECT 
    C.name AS Customers
FROM Customers C
left JOIN Orders O
ON C.id = O.customerId 
where customerId is null;