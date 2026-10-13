# Write your MySQL query statement below
select 
    id,
    (
    CASE
    WHEN p_id IS NULL THEN 'Root'
    WHEN id NOT IN (SELECT p_id FROM Tree WHERE p_id IS NOT NULL)
        THEN 'Leaf'
    ELSE 'Inner'
    
END
) as type 
from Tree 